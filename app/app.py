# library bawaan yang dibutuhkan
from fastapi import FastAPI, Request, Response, Form
import uvicorn
from pydantic import BaseModel

# import numpy as np
import pandas as pd
import mysql.connector
from datetime import datetime

# module dari model machine learning yang sudah dibuat
from model.recomendation_collab import recomendation 
from model.recomendation_category import recommend_places
from model.recomendation_similarItem import rec_similarItem

# Membuat koneksi ke database
conn = mysql.connector.connect(
    host='34.101.200.187',
    user='root',
    password='7b0d345c653dd8a54ccb286c10f575d1',
    database='tourista_db' 
)

# Mengeksekusi query untuk mengambil data dari tabel

query = "SELECT * FROM destination"
destination = pd.read_sql_query(query, conn)

query = "SELECT * FROM review_wisata"
ratings = pd.read_sql_query(query, conn)

query = "SELECT * FROM user_profile"
users = pd.read_sql_query(query, conn)

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
    recommendations = recomendation(destination, ratings, user_id, user_lat, user_long)

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
    recommendations = recommend_places(destination, category, city, price, 4)

    cursor = conn.cursor()
    
    current_datetime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    current_datetime = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    sql = "INSERT INTO trip_detail (user_id , trip_name_type, name_wisata, createdAt, updatedAt) VALUES (%s, %s, %s, %s, %s)"
    for category, places in recommendations.items():
        for place in places:
            values = (user_id, category, place, current_datetime, current_datetime)
            cursor.execute(sql, values)
            
    conn.commit()
    
    cursor.close()
    
    data = {
        'status': 'success',
    } 

    return data

# Endpoint untuk route "/recommendSimilarItem"
@app.post("/recommendSimilarItem")
def recommendSimilarItem(request: Request, destination_name: str = Form(...)):
    recommendations = rec_similarItem(destination, destination_name)

    data = {
        'recommendations': recommendations,
        'status': 'success',
    } 

    return data