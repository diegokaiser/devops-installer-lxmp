#! /bin/bash

# php
echo "- installing php"
sudo apt -y install php php-common
echo "-- php version"
sudo php -v
/$USER/devops-installer-lxmp/tools/mods/php_libraries.sh
echo "~~~~~~~~~~~"
echo "- php done!"