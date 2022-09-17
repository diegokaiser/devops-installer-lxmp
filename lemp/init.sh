#! /bin/bash

# greetings
echo "Heil, mein Kaiser!"

# updating and upgrading
tools/updateNupgrade.sh

# swaping
tools/swap.sh

echo "lemping..."
# installing nginx
tools/nginx.sh

# installing mysql
tools/mysql.sh

# installing php
tools/php.sh
echo "lemping done!"

# owning
tools/fixes/lxmp_owning.sh

# users and permissions
tools/fixes/lxmp_permissions.sh

# UFW
tools/ufw.sh

# GIT
tools/git.sh

# finish...
tools/reboot.sh