#install Node.js with Node Version Manager

sudo apt-get install -y build-essential checkinstall curl
	
sudo apt-get install -y libssl-dev

curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.3/install.sh | bash

#reflesh the environment
source ~/.profile

#list all the version
nvm ls-remote

#install version 6.X
nvm install 6

#show node version
node -v

#show npm version
npm -v
