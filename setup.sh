#this is the main setup script that trigger other all relevant scripts

sudo apt-get update

sudo apt-get upgrade -y

#fix chromium browser
source fix_chromium.sh

#install Node Version Manager and NodeJS
source node_setup.sh