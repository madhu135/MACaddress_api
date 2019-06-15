Project Title
============================

   Application for querying  the Company Name associated with that MAC address using the API.
   
Getting Started
==============================
   
   These instructions will give an idea about how to run the application using docker and Bash script.
   
Prerequisites
==========================
  
   Generate an API key to query the result from the website https://macaddress.io/ .
   
usage
===============================
  
Running the tests
   
 Step 1: use multi-stage builds to build the Image.
       First one is the base image and all packages that need to execute the program.
       Second is to copy the program to working directory and used ENTRYPOINT to execute the image
    
                   $ docker build -t <IMAGENAME> .
          
 Step 2: Now Run the Image using docker run and pass the arguments along with docker run
    
                  $docker run <IMAGENAME> <APIKEY> <MACADDRESS>
                   
                  $docker run test xxxxxxxxxxxxxxxxxx   00:00:00:00:00:00
  
 Step 3: Now Implemented Bash scrpt to containerized application
  
                     ./script.sh
   
   when you run the script it will prompt user to enter the APIKEY and MACADDRESS
                    
                    Enter the APIKEY: XXXXXXXXXXXXXXXXXXXX
                    Enter the MACADDRESS: 00:00:00:00:00:00
 
 output looks like :
                                                                                           
               Mac address 44:38:39:ff:ef:57  is associated with company Cumulus Networks, Inc  

