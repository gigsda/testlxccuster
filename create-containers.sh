for host in `cat hosts.lst` ;
do
  echo $host 
  lxc-create -t ubuntu -n $host
  sleep 2
done
