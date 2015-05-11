FROM ubuntu:latest
MAINTAINER nwoerheide@earlyadopterlabs.com

#RUN apt-get update && DEBIAN_FRONTEND-noninteractive apt-get install -yq apt-utils
#RUN DEBIAN_FRONTEND=nonineractive apt-get install -yq htop
RUN apt-get install -y
RUN apt-get install apache2 -y
RUN apt-get install curl -y
#RUN apt-get install traceroute -y
RUN curl -sSL https://get.docker.com/ubuntu | sh
RUN apt-get install wget -y

#PERL
WORKDIR /var/tmp

RUN wget http://www.cpan.org/src/5.0/perl-5.20.2.tar.gz
RUN tar -xzf perl-5.20.2.tar.gz

WORKDIR perl-5.20.2

RUN ./Configure -de -Dprefix=/opt/perl -Duseshrplib -Doptimize='-03 -march=native -pipe';
#RUN make all test install;
RUN /opt/perl/bin/h2ph -r -l /usr/include;

RUN /opt/perl/bin/h2ph -r -a -l;


CMD ["/opt/perl/bin/perl","-d"' "-e", "42" ]
#CMD ["/opt/perl/bin/perl","-d"' "-e", "0" ]

RUN apt-get clean
