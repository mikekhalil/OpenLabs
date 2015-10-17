#!/bin/bash  

rm -f output.txt
rm -f bigcomputeroutput.txt

zero="0"
labcounter=0
declare -a labArr=("moore" "sslab" "xinu" "borg") 

for i in "${labArr[@]}" 
do 
lab=$i
counter=0
	while [ $counter -lt 25 ] 
	do
		
		if [ $counter -lt 10 ]; then 
			host=$lab$zero$counter
		else 
			host=$lab$counter
		fi
		echo $host >>output.txt
		echo "./grepinfo.sh; exit" | ssh $host /bin/bash
		let counter=counter+1
		
		#xinu lab has 0-21 machines 	
		if [ "$lab" == "xinu" ]; then 
			if [ $counter -eq 22 ]; then 
				let counter=counter+3 
			fi 
		fi 
		
	done  
done 

podcounter=1
pod="pod"
dash="-"
while [ $podcounter -lt 6 ] 
do 
	counter=1
	while [ $counter -lt 6 ] 
	do
		host=$pod$podcounter$dash$counter
		echo $host >> output.txt 
		echo "./grepinfo.sh; exit" | ssh $host /bin/bash 
		let counter=counter+1
	done 
	let podcounter=podcounter+1
done

scp -q ./output.txt root@192.241.230.18:/blog/app

echo data >> bigcomputeroutput.txt
echo "./bigcomputerscript.sh; exit" | ssh data /bin/bash 

scp -q ./bigcomputeroutput.txt root@192.241.230.18:/blog/app
