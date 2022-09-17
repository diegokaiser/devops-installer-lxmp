#! /bin/bash

# greetings
echo "Heil, mein Kaiser!"

# updating and upgrading
/$USER/devops-installer-lxmp/tools/updateNupgrade.sh

# swaping
/$USER/devops-installer-lxmp/tools/swap.sh

echo "lamping..."
/$USER/devops-installer-lxmp/tools/tasksel_lamp.sh

echo "installing libraries..."
# installing libraries
/$USER/devops-installer-lxmp/tools/mods/php_libraries.sh
echo "lamping done!"

# enabling mod rewrite
/$USER/devops-installer-lxmp/tools/mods/mod_rewrite.sh

# owning
/$USER/devops-installer-lxmp/tools/fixes/lxmp_owning.sh

# users and permissions
/$USER/devops-installer-lxmp/tools/fixes/lxmp_permissions.sh

# UFW
/$USER/devops-installer-lxmp/tools/ufw.sh

# finish...
/$USER/devops-installer-lxmp/tools/reboot.sh