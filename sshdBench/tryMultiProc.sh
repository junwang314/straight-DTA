echo "usage run.sh session cycles"

function client()
{
for((i=0; i<$1;))
do
        echo $i
        scp ../genFile/file_1MB root@130.203.157.226:/root/file_1MB
        scp ../genFile/file_5MB root@130.203.157.226:/root/file_5MB
        scp ../genFile/file_10MB root@130.203.157.226:/root/file_10MB
        scp ../genFile/file_20MB root@130.203.157.226:/root/file_20MB
        scp ../genFile/file_50MB root@130.203.157.226:/root/file_50MB
        scp ../genFile/file_100MB root@130.203.157.226:/root/file_100MB
	i=$(expr $i + 1)
done
}

session=$1
cycle=$2 
for ((i=0; i<$session;))
do
	echo $i
	client $cycle &
	i=$(expr $i + 1)
done
wait


