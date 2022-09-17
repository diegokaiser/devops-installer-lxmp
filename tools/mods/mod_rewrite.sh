#!/bin/bash

echo "modding..."
sudo a2enmod rewrite && sudo service apeche2 restart
echo "modding done!"