#!/bin/bash

docker network create my_network

docker run -d --name mysql-container --network my_network -e MYSQL_ROOT_PASSWORD=mysecretpassword -e MYSQL_DATABASE=mydb -e MYSQL_USER=myuser -e MYSQL_PASSWORD=mypassword mysql:latest

docker run -d --name website-container --network my_network -p 8080:80 website-container
