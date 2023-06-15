# library bawaan yang dibutuhkan
from fastapi import FastAPI, Request, Response, Form
from pydantic import BaseModel

# import numpy as np
import pandas as pd
import mysql.connector
import warnings
from config.config import host, password
from pandas.errors import SettingWithCopyWarning

# Suppress the warning
warnings.filterwarnings("ignore", category=SettingWithCopyWarning)

from datetime import datetime

# module dari model machine learning yang sudah dibuat
from model.recomendation_collab import recomendation 
from model.recomendation_category import recommend_places
from model.recomendation_similarItem import rec_similarItem

# Membuat koneksi ke database
def defineDB():
    conn = mysql.connector.connect(
        host=host,
        user='root',
        password=password,
        database='tourista_db' 
    )
    return conn

# Define a function to close database connection
def close_db_connection(mydb):
    # Check if the connection object exists
    if mydb:
        # Try to close the connection
        try:
            # Close the connection
            mydb.close()
            # Print a success message
            print("Closed connection to database")
        # Handle any exceptions
        except mysql.connector.Error as e:
            # Print an error message
            print("Failed to close connection to database:", e)

app = FastAPI()

# Endpoint untuk route "/"
@app.get("/")
def home():
    data = {
        'message': 'API tourista already running, for documentation can direct on github',
        "github": "https://github.com/Six-Kizuki-to-the-moon/Machine-Learning/tree/main/API",
        'status': 'success',
        'error': False
    }
    return data

class Collab(BaseModel):
    user_id: int
    user_lat: float
    user_long: float

# Endpoint untuk route "/recommendCollab"
@app.post("/recommendCollab")
def recommendCollab(request: Request, user_id: int = Form(...), user_lat: float = Form(...), user_long: float = Form(...)):
    conn = defineDB()
    
    query = "SELECT * FROM destination"
    destination = pd.read_sql_query(query, conn)

    query = "SELECT * FROM review_wisata"
    ratings = pd.read_sql_query(query, conn)

    recommendations = recomendation(destination, ratings, user_id, user_lat, user_long)

    close_db_connection(conn)
    
    data = {
        'recommendations': recommendations,
        'status': 'success',
    } 

    return data

class ContentBased(BaseModel):
    user_id: int
    category: str
    city: str
    price: int

# Endpoint untuk route "/recommendContentBased"
@app.post("/recommendContentBased")
def recommendContent(request: Request, user_id: int = Form(...), category: str = Form(...), city: str = Form(...), price: int = Form(...)):
    conn = defineDB()
    
    query = "SELECT * FROM destination"
    destination = pd.read_sql_query(query, conn)
    
    recommendations = recommend_places(destination, category, city, price, 4)
    cursor = conn.cursor()
    
    current_datetime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    current_datetime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    sql = "INSERT INTO trip_detail (user_id , trip_name_type, name_wisata, createdAt) VALUES (%s, %s, %s, %s)"
    for category, places in recommendations.items():
        for place in places:
            values = (user_id, category, place, current_datetime)
            cursor.execute(sql, values)
            
    conn.commit()
    cursor.close()
    
    close_db_connection(conn)

    data = {
        'status': 'success',
    } 

    return data

# Endpoint untuk route "/recommendSimilarItem"
@app.post("/recommendSimilarItem")
def recommendSimilarItem(request: Request, destination_name: str = Form(...)):
    conn = defineDB()
    
    query = "SELECT * FROM destination"
    destination = pd.read_sql_query(query, conn)

    recommendations = rec_similarItem(destination, destination_name)

    close_db_connection(conn)

    data = {
        'recommendations': recommendations,
        'status': 'success',
    } 

    return data