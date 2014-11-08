
if [ `whoami` != "root" ] 
then
   echo "Warning: this shell must be run by root"
   exit 0
fi


apt-get install lxc -y

wget http://lxc-webpanel.github.io/tools/install.sh -O - | bash


