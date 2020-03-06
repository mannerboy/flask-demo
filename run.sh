#!/bin/bash 

docker stop flask
docker rm flask
docker run -d --name flask -p 5000:5000 worldzhang/flask-demo 
