while read a
do
	echo "number of kill in strace of pid $a"
	sudo grep -c "^$a kill(20149999" $1
	echo "number of kill in auditd of pid $a"
	sudo grep -c "syscall=62 .* a0=13376ef .* pid=$a " /var/log/audit/audit.log 
done
