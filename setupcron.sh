(crontab -l ; echo "* /5 * * * sudo bash <PATH>/redeploy.sh ") | crontab -