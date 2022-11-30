#!/bin/bash
sudo docker pull ashcroftt/jar:latestest
sudo docker stop JAR_CONTAINER
sudo docker system prune -f
sudo docker run -d --name=JAR_CONTAINER -p 80:80 ashcroftt/jar:latestest
