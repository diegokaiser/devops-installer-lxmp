#! /bin/bash

# greetings
echo "Heil, mein Kaiser!"

# updating and upgrading
~/devops-installer-lxmp/tools/updateNupgrade.sh

# swaping
~/devops-installer-lxmp/tools/swap.sh

echo "lemping..."
# installing nginx
~/devops-installer-lxmp/tools/nginx.sh

# installing mysql
~/devops-installer-lxmp/tools/mysql.sh

# installing php
~/devops-installer-lxmp/tools/php.sh
echo "lemping done!"

# owning
~/devops-installer-lxmp/tools/fixes/lxmp_owning.sh

# users and permissions
~/devops-installer-lxmp/tools/fixes/lxmp_permissions.sh

# UFW
~/devops-installer-lxmp/tools/ufw.sh

# finish...
~/devops-installer-lxmp/tools/reboot.sh