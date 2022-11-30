#!/bin/bash
sudo docker pull ashcroftt/nginx-test-artwrks:main
sudo docker stop SRV_CONTAINER
sudo docker system prune -f
sudo docker run -d --name=SRV_CONTAINER -p 80:80 ashcroftt/nginx-test-artwrks:main
