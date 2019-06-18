Project Title
============================

   Application for querying  the Company Name associated with that MAC address using the API.
   
Getting Started
==============================
   
   These instructions will give an idea about how to run the application using docker and Bash script.
   
Prerequisites
==========================
  
   1.Generate an API key to query the result from the website https://macaddress.io/ .
   
   2.List all the Macaddress for which you want to find company details  in a `macaddress.txt` file which will read as input from script.
   
Workflow
======================
  The Application workflow contains the below steps

Step1: Implement the Python Program to fetch the comapany details associated with the macaddress using the following command.Pass the API key and Macaddress as arguments.

                          python3  macaddress.py <APIKEY>  <MACADDRESS>

Step2: Now use multi-stage builds to build the image and to run the container.Docker build command is to build the image and docker  run command is to run the image.
  
                       docker build -t <IMAGENAME>  .
                       
                       docker run <IMAGENAME> <APIKEY> <MACADDRESS>
                       
 Step3:  Use the `./mac_info_utility.sh`   wrapper script which abstract application logic as well as image building process.It will give  the desired result.
 
 After you run the above command the Bash script will ask you to enter the `APIKEY` and will take the list of `macaddress` for which you want to find the company details from a file named `macaddress.txt` as input and shows the output like below.

If you find any difficulties in running the shell script you can just run the command .`/mac_info_utility.sh -help` , it will show the directions on command line on  how to run the script.
  
 
                 
usage
===============================
  
  
 Use the below  wrapper script which abstracts application logic as well as image building process,just running the same will give the desired result.
   
                        `./mac_info_utility.sh`
  
   The script will prompt the user to enter the API key                   
                    
                    Enter the APIKEY: XXXXXXXXXXXXXXXXXXXX
                    
 
The output looks like :
                                                                                           
               Mac address 44:38:39:ff:ef:57  is associated with company Cumulus Networks, Inc  
               Mac address 00-14-22-01-23-45  is associated with company Dell Inc

