# Machine Learning Deployment
This API has been creating using FastAPI

## Packages
Packages
```
pip install fastapi
pip install tensorflow
pip install pandas
pip install mysql-connector
pip install mysql-connector-python
pip install pymysql
pip install scikit-learn
pip install uvicorn
pip install python-multipart
```

Note<br>
<ul>
  <li>Make sure you already installed <a href="[https://translate.google.com/?sl=en&tl=id&text=packages&op=translate](https://www.anaconda.com/download-success)">anaconda</a></li>
  <li>Make sure you already installed <a href="https://www.apachefriends.org/">xampp</a></li>
  <li>Download database on folder `/app/dataset/Db_touristaExample.sql` and import on your xampp</li>
</ul>


# Endpoint

## **Home**
#### GET

```
  GET /
```

| Arguments | Output              |
| :-------- | :------------------ |
| none     | API tourista already running, for documentation can direct on github  |

## **Content Based Filtering**
### POST
All of the body for given data only using x-www-form-urlencoded format

```
  POST /recommendContentBased
```

| Key          | Info     |
| :----------- | :------- | 
| `user_id`    | Required |
| `category`   | Required |
| `city`       | Required |
| `price`      | Required |

## **Collaborative Filtering**
### POST
All of the body for given data only using x-www-form-urlencoded format

```
  POST /recommendCollab
```

| Key          | Info     |
| :----------- | :------- | 
| `user_id`    | Required |
| `user_lat`   | Required |
| `user_long`  | Required |

## **Similarity Item**
### POST
All of the body for given data only using x-www-form-urlencoded format

```
  POST /recommendSimilarItem
```

| Key                | Info     |
| :----------------- | :------- | 
| `destination_name' | Required |