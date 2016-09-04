#this is the main setup script that trigger other all relevant scripts

apt-get update

apt-get upgrade -y

#install some great software
apt-get install -y aptitude synaptic bleachbit screen htop

#fix chromium browser
source fix_chromium.sh

#install Node Version Manager and NodeJS
source node_setup.sh

#add swap
source add_swap.sh

#install okular as pdf viewer
#okular is included in kde
apt-get install -y okular

#as suggested, it is good to use non-root user in linux
#however, it require password everytime we use the "sudo" command
#the following line bypass the password requirement in command-line
echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" | env EDITOR="tee -a" visudo


