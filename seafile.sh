# install private cloud with seafile
# https://manual.seafile.com/deploy/using_sqlite.html
# https://manual.seafile.com/deploy/using_mysql.html

location=~/cloud/

# installation
mkdir -p $location
cd $location
wget https://github.com/haiwen/seafile-rpi/releases/download/v6.0.8/seafile-server_6.0.8_stable_pi.tar.gz
tar -xzvf seafile-server_*
mkdir installed
mv seafile-server_* installed

# install dependencies
apt-get update -y
apt-get install python -y
apt-get install -y python2.7 libpython2.7 python-setuptools python-imaging python-ldap python-mysqldb python-memcache python-urllib3

# setup
cd seafile-server-*
./setup-seafile-mysql.sh  #run the setup script & answer prompted questions


# start the server, default is http://localhost:8000
./seafile.sh start # start,stop, restart the Seafile service
./seahub.sh start  # start <port>, stop, restart <port> (accept a param as port, default is 8000)