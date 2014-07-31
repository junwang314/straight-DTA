echo "usage run.sh session cycles"

function client()
{
for((i=0; i<$1;))
do
        echo $i
	wget $url
	i=$(expr $i + 1)
	sleep 1
done
}

session=$1
cycle=$2 
url=$3
for ((i=0; i<$session;))
do
	echo $i
	client $cycle &
	i=$(expr $i + 1)
done
wait


