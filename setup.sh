#!/bin/bash

# Install apache2, vsftpd and binutils
sudo apt-get update
sudo apt-get install apache2 vsftpd

# Enable and start the required services
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl enable vsftpd
sudo systemctl start vsftpd
sudo cp /vagrant_data/vsftpd.conf /etc
sudo systemctl restart vsftpd

# Copy rickroll :D
sudo cp /vagrant_data/admin.html /var/www/html

# Create users and change passwords
sudo adduser mark
sudo passwd vagrant
sudo passwd ubuntu

# Configure ftp
sudo mkdir -p /var/ftp/pub
echo "m4rks3cur3" | sudo tee /var/ftp/pub/.mark
sudo chmod 755 /var/ftp/pub/.mark

# Configure Sudoers
sudo cp /vagrant_data/sudoers /etc/sudoers

# Flags
echo "CTF{4ab76d521b79ccdaa51a4f0850cbcd2e}" | sudo -u mark tee /home/mark/user.txt
echo "CTF{f2845ba9ab08e1bce85dd48c75c29957}" | sudo tee /root/root.txt