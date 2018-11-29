#!/bin/bash
if [ "$1" == "" ]
then
	echo  "Ex: bash Ping-sweep.sh 10.11.1."
else
for i in `seq 1 254`; do
	ping -c 1 -i 0.2 -W 1 $1$i | grep "64 bytes" | cut -d " " -f4 | cut -d ":" -f1 &>> IPs.txt &
done
fi
#z3r00t
