#! /bin/bash

echo "owning folders in /html/+..."
sudo chown -R www-data:www-data /var/www/html/*
echo "owning done!"