
if [ `whoami` != "root" ] 
then
   echo "Warning: this shell must be run by root"
   exit 0
fi


apt-get install lxc -y

wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash

lxc-create -t ubuntu -n hadoop1
lxc-create -t ubuntu -n hadoop2
lxc-create -t ubuntu -n hadoop3
lxc-create -t ubuntu -n hadoop4
lxc-create -t ubuntu -n hadoop5
lxc-create -t ubuntu -n hadoop6
lxc-create -t ubuntu -n hadoop7
lxc-create -t ubuntu -n hadoop8
lxc-create -t ubuntu -n hadoop9

sudo lxc-start -d -n hadoop1
sudo lxc-start -d -n hadoop2
sudo lxc-start -d -n hadoop3
sudo lxc-start -d -n hadoop4
sudo lxc-start -d -n hadoop5
sudo lxc-start -d -n hadoop6
sudo lxc-start -d -n hadoop7
sudo lxc-start -d -n hadoop8
sudo lxc-start -d -n hadoop9
