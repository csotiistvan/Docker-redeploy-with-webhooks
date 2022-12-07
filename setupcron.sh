#!/bin/bash
(sudo crontab -l ; echo "@reboot sudo bash /home/ubuntu/redeploy.sh ") | sudo crontab -        
#(sudo crontab -l ; echo "@reboot sudo kill -9 `sudo lsof -t -i:9000` ") | sudo crontab -       
(sudo crontab -l ; echo "@reboot sleep 120 && sudo webhook -hooks /home/ubuntu/hooks.json -hotreload & ") | sudo crontab -   
(sudo crontab -l ; echo "*/5 * * * * sudo bash /home/ubuntu/redeploy.sh ") | sudo crontab -    
