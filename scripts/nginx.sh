
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/CDOS/nginx/nginx.conf /etc/nginx/sites-available/CDOS/onlinequiz-master/onlinequiz
sudo ln -s /etc/nginx/sites-available/CDOS/onlinequiz-master/onlinequiz /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
#sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx
