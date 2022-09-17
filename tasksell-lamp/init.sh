#! /bin/bash

# greetings
echo "Heil, mein Kaiser!"

# updating and upgrading
~/devops-installer-lxmp/tools/updateNupgrade.sh

# swaping
~/devops-installer-lxmp/tools/swap.sh

echo "lamping..."
~/devops-installer-lxmp/tools/tasksel_lamp.sh

echo "installing libraries..."
# installing libraries
~/devops-installer-lxmp/tools/mods/php_libraries.sh
echo "lamping done!"

# enabling mod rewrite
~/devops-installer-lxmp/tools/mods/mod_rewrite.sh

# owning
~/devops-installer-lxmp/tools/fixes/lxmp_owning.sh

# users and permissions
~/devops-installer-lxmp/tools/fixes/lxmp_permissions.sh

# UFW
~/devops-installer-lxmp/tools/ufw.sh

# finish...
~/devops-installer-lxmp/tools/reboot.sh