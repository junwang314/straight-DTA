#!/bin/sh

echo "**************round 1**************"
time ../src/wget 130.203.157.226/linux-2.6.33.tar.xz
echo "**************round 2**************"
time ./wget 130.203.157.226/linux-2.6.33.tar.xz
rm tmp.*
auditctl -D
auditctl -a exit,always -F arch=b64 -S open -S socket -S bind -S connect -S accept -S kill -S close
echo "**************round 3**************"
time ./wget 130.203.157.226/linux-2.6.33.tar.xz
auditctl -D

