for host in `cat hosts.lst` ;
do
  echo $host 
  lxc-stop -n  $host
done
