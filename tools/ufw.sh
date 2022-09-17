#! /bin/bash

echo "UFW"
sudo apt-get install ufw -y

echo "- setting ufw defaults"
sudo ufw default deny incoming
sudo ufw default allow outgoing

echo "- allowing SSH, HTTP and HTTPS"
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow HTTPS

echo "- enabling ufw"

sudo ufw enable

echo "- summary"
sudo ufw status verbose

echo "~~~~~~~~~"
echo "ufw done!"