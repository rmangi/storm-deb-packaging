#https://github.com/phobos182/storm-deb-packaging
#http://stackoverflow.com/questions/12115160/compiling-jzmq-on-ubuntu

# install perquisite software - misc
apt-get update
sudo apt-get install -f git pkg-config libtool automake autoconf gcc gawk g++ uuid-dev libpgm-5.1-0 ruby-dev -y

# autoreconf
gem install fpm

# install perquisite software - zeromq
mkdir -p /var/tmp; cd /var/tmp
mkdir zeromq; cd zeromq
wget http://download.zeromq.org/zeromq-4.0.4.tar.gz
tar -xzvf zeromq-4.0.4.tar.gz
cd zeromq-4.0.4/
./configure
make
make install