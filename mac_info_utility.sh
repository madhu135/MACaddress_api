#!/bin/bash
if [ "$1" = "-help" ]; then 
     echo "$(<help.txt)"
else
    read -p "Please Enter Your APIKEY: "  APIKEY
    if [ -z "$APIKEY"  ]; then 
     echo "Please enter the Apikeiy"
    elif [ ! -f  macaddress.txt ] || [ -z "$(cat macaddress.txt)" ]; then
          echo "Please check whether there is macaddress.txt file is present"
          echo " Please enter the Macaddress to identify the company name  in the macaddress.txt file"
     else 
        for i in `cat macaddress.txt`;
        do
         #Build the image from the Docker file and redirect the output to a file
           docker build -t test . >> /tmp/file.txt    
         #Run the container an pass the APIKEY and MACaddress as arugments through command line.
           docker run test:latest  $APIKEY $i
           
    
        done
     fi
fi
                               

