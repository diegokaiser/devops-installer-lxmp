#! /bin/bash

# greetings
echo "Heil, mein Kaiser!"

# updating and upgrading
~/$USER/devops-installer-lxmp/tools/updateNupgrade.sh

# swaping
~/$USER/devops-installer-lxmp/tools/swap.sh

echo "lemping..."
# installing nginx
~/$USER/devops-installer-lxmp/tools/nginx.sh

# installing mysql
~/$USER/devops-installer-lxmp/tools/mysql.sh

# installing php
~/$USER/devops-installer-lxmp/tools/php.sh
echo "lemping done!"

# owning
~/$USER/devops-installer-lxmp/tools/fixes/lxmp_owning.sh

# users and permissions
~/$USER/devops-installer-lxmp/tools/fixes/lxmp_permissions.sh

# UFW
~/$USER/devops-installer-lxmp/tools/ufw.sh

# finish...
~/$USER/devops-installer-lxmp/tools/reboot.sh