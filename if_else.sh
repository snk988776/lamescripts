#!/bin/bash
#Its a simple shell script using if else condition to check if the message entered by user contains all alphabets or not.

function try()
{ 
   flag=0
   echo "Enter the message :"
   read message 

   for (( i=0; i<${#message}; i++ )) 
   {
        char="${message:$i:1}"
        if [[ "$char" =~ [a-z] ]]
	then
		continue
	else
		echo "Please enter only alphabets, running the program again"
		try
		local flag=1
		exit 
	fi
   }
	if [ "$flag" -eq 0 ]
	then
	      echo "User has entered all alphabets, exiting program"
	fi
}
try




