#!/bin/bash
message=$(sudo docker pull ashcroftt/web:latestest | egrep '^Status:')
if [[ $message != "Status: Image is up to date for ashcroftt/web:latestest" ]]
then
    sudo docker stop APACHE
    sudo docker system prune -f
    sudo docker run -d --name=APACHE -p 80:80 ashcroftt/web:latestest
    sudo docker start APACHE
else
    sudo docker start APACHE
fi
