FROM ubuntu:17.04
MAINTAINER RazzDazz
# Using instructions from
# http://docs.openhab.org/installation/linux.html


# First, add the openHAB 2 Bintray repository key to your package manager and allow Apt to use the HTTPS Protocol:
# RUN wget -qO - 'https://bintray.com/user/downloadSubjectPublicKey?username=openhab'
# RUN apt-key add - && /
# sudo apt-get install apt-transport-https

# run shell to keep container alive for testing
CMD  /bin/bash
