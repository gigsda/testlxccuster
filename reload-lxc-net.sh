service lxc-net stop
rm /var/lib/misc/dnsmasq.lxcbr0.leases 
service lxc-net start
