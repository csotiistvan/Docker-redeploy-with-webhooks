#!/bin/bash
(sudo crontab -l ; echo "@reboot sudo bash /home/ubuntu/redeploy.sh ") | sudo crontab -        
(sudo crontab -l ; echo "*/5 * * * * sudo bash /home/ubuntu/redeploy.sh ") | sudo crontab -    
