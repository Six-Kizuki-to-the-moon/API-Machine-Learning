# Machine Learning Deployment
This API has been creating using FLASK

## Requirements
Packages
```
Flask 
numpy
pandas
tensorflow
scikit-learn
mysql-connector-python
```
Note
- Make sure you already installed <a href="[https://translate.google.com/?sl=en&tl=id&text=packages&op=translate](https://www.anaconda.com/download-success)">anaconda</a>
- Make sure you already installed <a href="https://www.apachefriends.org/">xampp</a>
- Create database with name 'tourista_db' with contain tables:
    - destination
    - review_wisata
    - trip
    - trip_detail
    - user_account
    - user_profile
- Import via csv file <a href="https://github.com/Six-Kizuki-to-the-moon/Machine-Learning/tree/main/dataset">dataset</a> to each table in the previously created database
- run the API with "`python main.py`"

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
  POST /ml/recommendContentBased
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
  POST /ml/recommendCollab
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
  POST /ml/recommendSimilarItem
```

| Key                | Info     |
| :----------------- | :------- | 
| `destination_name' | Required |
