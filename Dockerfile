FROM ubuntu:17.04
MAINTAINER RazzDazz
# Using instructions from
# http://docs.openhab.org/installation/linux.html

# First, add the openHAB 2 Bintray repository key to your package manager and allow Apt to use the HTTPS Protocol:
RUN apt-get -yqq update && \
    apt-get -yqq upgrade && \
    apt-get -y install wget && \
    wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab' | apt-key add - && \
    apt-get -y install apt-transport-https && \
    rm -rf /var/lib/apt/lists/*
    
    
# Add openhab repo to sources list, update and install
RUN echo 'deb https://dl.bintray.com/openhab/apt-repo2 stable main' | tee /etc/apt/sources.list.d/openhab2.list && \
    apt-get -yqq update && \
    apt-get -yqq install openhab2 && \
    rm -rf /var/lib/apt/lists/*

# run shell to keep container alive for testing
CMD  /bin/bash
