FROM ubuntu:17.04
MAINTAINER RazzDazz
# Using instructions from
# http://docs.openhab.org/installation/linux.html

# First, add the openHAB 2 Bintray repository key to your package manager and allow Apt to use the HTTPS Protocol:
RUN apt-get update
RUN apt-get install wget
RUN wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | apt-key add - 

# Add openhab repo to sources list, uüdate and install
RUN echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | tee /etc/apt/sources.list.d/openhab2.list
RUN apt-get update
RUN apt-get -y install openhab2

# run shell to keep container alive for testing
CMD  /bin/bash
