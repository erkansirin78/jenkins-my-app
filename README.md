#DOCKERIZE

#BUILD
docker build -t iris_classifier .

#RUN
docker run --name iris -v /home/train/flask_ci_cd/saved_models:/app/saved_models -p 8082:8082 -d iris_classifier

# API USAGE
# METHOD GET
## url
http://127.0.0.1/:8082/iris/

# sample request
{"SepalLengthCm":5.1, "SepalWidthCm":3.5, "PetalLengthCm":1.4 , "PetalWidthCm": 0.2}

# sample result/response
{
    "result": "[{\"label\":\"Iris-setosa\"}]"
}

# prediction with curl
```
(venvspark) [train@localhost flask_ci_cd]$ curl localhost:8082/iris -H 'Content-Type: application/json' -XGET -d '{"SepalLengthCm":5.1, "SepalWidthCm":3.5, "PetalLengthCm":1.4 , "PetalWidthCm": 0.2}'
{"result":"[{\"label\":\"Iris-setosa\"}]"}
```
