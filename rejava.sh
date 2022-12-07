#!/bin/bash
message=$(sudo docker pull jutsz/jar:latest | egrep '^Status:')
#echo $message
if [[ $message != "Status: Image is up to date for jutsz/jar:latest" ]]
then
    sudo docker stop JARJAR
    sudo docker system prune -f
    sudo docker run -d --name=JARJAR -p 80:8080 jutsz/jar:latest
    sudo docker start JARJAR
else
    sudo docker start JARJAR
fi
webhookactive=$(sudo netstat -tulpn | awk '$7 ~ ".webhook" awk {print $6}')
if [[ $webhookactive != "LISTEN" ]]
then
  sudo webhook -hooks /home/ubuntu/hooks.json -hotreload -nopanic &
fi
