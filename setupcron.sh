#(crontab -l ; echo "@reboot sudo bash /home/ubuntu/redeploy.sh ") | crontab -;
(crontab -l ; echo "*/5 * * * * sudo bash /home/ubuntu/redeploy.sh ") | crontab -
