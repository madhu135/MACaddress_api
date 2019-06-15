#!/bin/bash
read -p "Please Enter Your APIKEY: "  APIKEY
if [ -z "$APIKEY"  ]; then 
     echo "Please enter the Apikey" 
else
    for i in `cat macaddress.txt`;
    do
         #Build the image from the Docker file and redirect the output to a file
           docker build -t test . >> /tmp/file.txt    
         #Run the container an pass the APIKEY and MACaddress as arugments through command line.
          docker run test:latest  $APIKEY $i
    done
fi
                               

