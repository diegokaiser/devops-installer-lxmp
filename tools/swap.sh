#! /bin/bash

echo "swaping..."
sudo fallocate -l 1G /swapfile
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1048576
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swalfile
sudo nano /etc/fstab

# TODO
# falta la edición del archivo fstab
# agregar al final
# /swapfile swap swap defaults 0 0

echo "swaping done!"