#DOCKERIZE

#BUILD
docker build -t iris_classifier .

#RUN
 docker run --name iris -v $(PWD)/saved_models:/app/saved_models -p 8082:8082 -d iris_classifier

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

#
=======
# iris_classifier

This project is for iris classification model deployment.
>>>>>>> 8383efc68564cd5b9b31b7eafb7f2894461601f2
