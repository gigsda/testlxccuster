for host in `cat hosts.lst` ;
do
  echo $host 
  lxc-stop -n  $host
  lxc-destroy -n  $host
done

service lxc-net stop
rm /var/lib/misc/dnsmasq.lxcbr0.leases 
service lxc-net start
