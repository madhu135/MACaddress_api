#Base Image as centos
FROM centos:latest as base
#Maintainer 
MAINTAINER madhukomaln@hcl.com
# Establish the runtime user (with no password and no sudo) 
RUN useradd -m myapp
USER myapp
#Configuring working directory
WORKDIR /home/myapp 
#Movie the macaddress.py to the working directory
ADD macaddress.py /home/myapp 


FROM python:3
#Copying the python program from base image
COPY --from=0  /home/myapp/macaddress.py /
#using ENTRYPOINT to execute the program 
ENTRYPOINT ["python3", "/macaddress.py"]
