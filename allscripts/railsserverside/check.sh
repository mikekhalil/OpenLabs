#!/bin/bash

counter=0
rm -f log.txt
rm -f nohup.out
while true; do
	echo on interation $counter > log.txt 
	echo "./checkcomputers.sh; exit" | ssh -l mohanty0 data.cs.purdue.edu /bin/bash
	ping -c 1 data.cs.purdue.edu | tail -1| awk '{print $4}' | cut -d '/' -f 2 >>  bigcomputeroutput.txt
	sleep 30 
	let counter=counter+1
done 
