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
