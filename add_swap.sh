#this script take 6GB disk-space and add it as swap
#ref: https://www.digitalocean.com/community/tutorials/how-to-add-swap-on-ubuntu-14-04

#create 6GB file
fallocate -l 6G /swapfile

#set the right permission
chmod 600 /swapfile

#setup /swapfile as swap
mkswap /swapfile

#use /swapfile as swap
swapon -s

#Make the Swap File Permanent
echo "/swapfile   none    swap    sw    0   0" >> /etc/fstab
