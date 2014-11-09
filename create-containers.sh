export PASSWD=1234

for host in `cat hosts.lst` ;
do
  echo $host 
  lxc-create -t ubuntu -n $host
  sleep 2
done

sh start-containers.sh

for host in `cat hosts.lst` ;
do
  lxc-attach -n $host -- /bin/sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
  lxc-attach -n $host -- /bin/sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
  lxc-attach -n $host -- service ssh reload
  echo root:$PASSWD | lxc-attach -n $host -- chpasswd

 ./ssh-copy-id-expect $host root $PASSWD ~/.ssh/id_rsa.pub 

done
