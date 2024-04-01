#!/bin/bash
sudo apt update -y
sudo apt install nginx -y
sudo systemctl start nginx
sudo apt install awscli -y
sudo apt install docker.io -y
sudo systemctl enable nginx
echo "hello, $(hostname)" > /var/www/html/index.html