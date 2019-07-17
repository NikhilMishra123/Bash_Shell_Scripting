
#!/bin/bash
#-------------------------------------------------------------------------------------------
#searching for a file 

echo 'Enter file name'
read name
declare -i count=0
for item in *
do
	if [ "$name" = "$item" ]
	then 
		count=1;
		echo "Found "$item 
	fi
done
if ((count == 0))
then 
	echo "Not Found"
fi

#----------------------------------------------------------------------------------------

# #counting directory 
declare -i count=0
for item in *
do
	
	if [ -d $item ]
	then 
		echo $item
		count=$(( count + 1 ))
	fi
done
echo $count
