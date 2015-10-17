#!/bin/bash 
whostring=$(who | grep "tty7")
occupiedbool=1;
if [[ -z "$whostring"  ]]; then 
	occupiedbool=0; 
fi 

echo $occupiedbool >> output.txt
#top -bn2 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}' | sed -n '2p' >>output.txt

#who >>output.txt
exit 
