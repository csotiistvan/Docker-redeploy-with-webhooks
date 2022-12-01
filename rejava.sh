#!/bin/bash
sudo docker pull jutsz/schiele-jar:latest
sudo docker stop JAR_CONTAINER
sudo docker system prune -f
sudo docker run -d --name=JAR_CONTAINER -p 80:80 jutsz/schiele-jar:latest
