
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/CDOS/nginx/nginx.conf /etc/nginx/sites-available/onlinequiz
sudo ln -s /etc/nginx/sites-available/onlinequiz /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
sudo nginx -t
sudo usermod -a -G www-data ubuntu
sudo nginx -t
sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx



