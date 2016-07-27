#after installing Ubuntu 16.04, chromium browser may crash or doesn't work.

#Remove installed Chromium Ver 49
sudo apt-get remove --purge chromium-browser
sudo apt-get autoremove

#create init/ if not exist
mkdir -p init/

pushd init/

#Download older version(Ver 48) deb packages
wget https://launchpad.net/ubuntu/+source/chromium-browser/48.0.2564.116-0ubuntu1.1229/+build/9053018/+files/chromium-codecs-ffmpeg-extra_48.0.2564.116-0ubuntu1.1229_armhf.deb
wget https://launchpad.net/ubuntu/+source/chromium-browser/48.0.2564.116-0ubuntu1.1229/+build/9053018/+files/chromium-browser_48.0.2564.116-0ubuntu1.1229_armhf.deb

#Install the downloaded packages
sudo dpkg -i chromium-codecs-ffmpeg-extra_48.0.2564.116-0ubuntu1.1229_armhf.deb
sudo dpkg -i chromium-browser_48.0.2564.116-0ubuntu1.1229_armhf.deb

popd

#Mark "HOLD" to prevent unintended upgrade
sudo apt-mark hold chromium-browser


