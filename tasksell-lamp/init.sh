#! /bin/bash

# greetings
echo "Heil, mein Kaiser!"

# updating and upgrading
tools/updateNupgrade.sh

# swaping
tools/swap.sh

echo "lamping..."
tools/tasksel_lamp.sh

echo "installing libraries..."
# installing libraries
tools/mods/php_libraries.sh
echo "lamping done!"

# enabling mod rewrite
tools/mods/mod_rewrite.sh

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