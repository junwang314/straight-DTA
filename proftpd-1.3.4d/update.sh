make 
sudo strace -f -o proftpd.strace ./proftpd -n
cat dbgfile.txt
ps aux | grep proftpd
ps aux | grep vsftpd
ps aux | grep pure-ftpd
