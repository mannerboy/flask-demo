#!/bin/bash

docker stop flask
docker rm flask
docker rmi worldzhang/flask-demo
