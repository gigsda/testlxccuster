export PASSWD=1234
for host in `cat hosts.lst` ;
do
   ssh root@$host "userdel ansibler"
   ssh root@$host "useradd -m -p 1234 ansibler"
   ssh root@$host "echo ansibler:$PASSWD | chpasswd"
  ./ssh-copy-id-expect $host ansibler $PASSWD ~/.ssh/id_rsa.pub  
done
   
   
