#Base Image as Python3
FROM python:3 as base
#Maintainer 
MAINTAINER madhukomaln@hcl.com
# Establish the runtime user (with no password and no sudo) 
RUN useradd -m myapp
USER myapp
#Configuring working directory
WORKDIR /home/myapp 
#Movie the .txt file to the working directory
ADD requirements.txt /home/myapp 
RUN pip  install --user -r  requirements.txt 


FROM base
#Copying the python program to working directory
ADD macaddress.py /home/myapp
#using ENTRYPOINT to execute the program 
ENTRYPOINT ["python3", "/home/myapp/macaddress.py"]
