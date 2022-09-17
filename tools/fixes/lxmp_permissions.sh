#! /bin/bash

echo "users and permissions..."
sudo find . -type d -exec chmod 755 {} \;
sudo find . -type f -exec chmod 644 {} \;
echo "permissions done!"