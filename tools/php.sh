#! /bin/bash

# php
echo "- installing php"
sudo apt -y install php php-common
echo "-- php version"
sudo php -v
./mods/php_libraries.sh
echo "- php done!"