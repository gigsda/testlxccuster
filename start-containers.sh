for host in `cat hosts.lst` ;
do
  echo $host 
  lxc-start -d -n  $host
  sleep 1
done
