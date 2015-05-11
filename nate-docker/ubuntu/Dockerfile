FROM ubuntu
MAINTAINER nwoerheide@earlyadopterlabs.com

#RUN apt-get update && DEBIAN_FRONTEND-noninteractive apt-get install -yq apt-utils
#RUN DEBIAN_FRONTEND=nonineractive apt-get install -yq htop

## My Crap ##

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y
RUN apt-get install apache2 -y
RUN apt-get install curl -y
#RUN apt-get install traceroute -y
RUN curl -sSL https://get.docker.com/ubuntu | sh
RUN apt-get install wget -y
RUN apt-get install openvpn -y
RUN apt-get install openssh-server -y
RUN apt-get install -y python-software-properties python
RUN apt-get install git -y





## This area is for testing ##
#RUN mkdir /docker-share
VOLUME /docker-vol


#RUN apt-get clear
