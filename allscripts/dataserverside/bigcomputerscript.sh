#!/bin/bash 
 
top -bn2 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1"%"}' | sed -n '2p' >> bigcomputeroutput.txt 
who | wc -l >> bigcomputeroutput.txt

