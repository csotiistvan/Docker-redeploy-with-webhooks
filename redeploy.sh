#!/bin/bash
message=$(sudo docker pull hordodonga/web:latest | egrep '^Status:')
if [[ $message != "Status: Image is up to date for hordodonga/web:latest" ]]
then
    sudo docker stop APACHE
    sudo docker system prune -f
    sudo docker run -d --name=APACHE -p 80:80 hordodonga/web:latest
    sudo docker start APACHE
else
    sudo docker start APACHE
fi
