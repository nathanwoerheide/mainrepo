FROM ubuntu:14.04
MAINTAINER nwoerheide@earlyadopterlabs.com

#RUN apt-get update && DEBIAN_FRONTEND-noninteractive apt-get install -yq apt-utils
#RUN DEBIAN_FRONTEND=nonineractive apt-get install -yq htop

## My Crap ##

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y
RUN apt-get install git nano -y
RUN apt-get install debconf-utils -y
RUN apt-get install wget -y
RUN apt-get install openssh-server -y
RUN apt-get install openssh-client -y
EXPOSE 80
EXPOSE 22

VOLUME /docker-vol

###bugzilla install###
RUN apt-get install apache2 -y
ADD mysql.preseed /root/
RUN chmod 755 /root/mysql.preseed
RUN cat /root/mysql.preseed | sudo debconf-set-selections
RUN apt-get install -y --force-yes mysql-server
RUN apt-get install libappconfig-perl -y
RUN apt-get install libdate-calc-perl -y
RUN apt-get install libtemplate-perl -y
RUN apt-get install libmime-perl -y
RUN apt-get install build-essential -y 
RUN apt-get install libdatetime-timezone-perl -y
RUN apt-get install libdatetime-perl -y
RUN apt-get install libemail-sender-perl -y
RUN apt-get install libemail-mime-perl -y
RUN apt-get install libemail-mime-modifier-perl -y
RUN apt-get install libdbi-perl -y
RUN apt-get install libdbd-mysql-perl -y
RUN apt-get install libcgi-pm-perl -y
RUN apt-get install libmath-random-isaac-perl -y
RUN apt-get install libmath-random-isaac-xs-perl -y
RUN apt-get install apache2-mpm-prefork -y
RUN apt-get install libapache2-mod-perl2 -y
RUN apt-get install libapache2-mod-perl2-dev -y
RUN apt-get install libchart-perl libxml-perl -y
RUN apt-get install libxml-twig-perl -y
RUN apt-get install perlmagick -y
RUN apt-get install libgd-graph-perl -y
RUN apt-get install libtemplate-plugin-gd-perl -y
RUN apt-get install libsoap-lite-perl -y
RUN apt-get install libhtml-scrubber-perl -y
RUN apt-get install libjson-rpc-perl -y
RUN apt-get install libdaemon-generic-perl -y
RUN apt-get install libtheschwartz-perl -y
RUN apt-get install libtest-taint-perl -y
RUN apt-get install libauthen-radius-perl -y
RUN apt-get install libfile-slurp-perl -y
RUN apt-get install libencode-detect-perl -y
RUN apt-get install libmodule-build-perl -y
RUN apt-get install libnet-ldap-perl -y
RUN apt-get install libauthen-sasl-perl -y
RUN apt-get install libtemplate-perl-doc -y
RUN apt-get install libfile-mimeinfo-perl -y
RUN apt-get install libhtml-formattext-withlinks-perl -y
RUN apt-get install libgd-dev -y
RUN apt-get install lynx-cur -y
RUN apt-get install python-sphinx -y

###Download BUGZILLA files###
RUN rm -rf /var/www/html
RUN git clone --branch release-4.4-stable https://git.mozilla.org/bugzilla/bugzilla /var/www/html


RUN rm /etc/mysql/my.cnf
ADD my.cnf /etc/mysql/
#RUN 
RUN service mysql restart
ADD bugzilla.conf /etc/apache2/sites-available/
RUN a2ensite bugzilla
RUN a2enmod cgi headers expires
RUN service apache2 restart


###Checksetup run###


ADD checksetup.sh /
RUN chmod 755 /checksetup.sh
RUN chmod +x /checksetup.sh
RUN ./checksetup.sh
RUN ./var/www/html/checksetup.pl
RUN rm -r /var/www/html/localconfig
ADD localconfig /var/www/html/

ADD root-files/my.cnf /root/


RUN service mysql start
RUN service mysql restart
ADD mysql_bugs.sh /root/
RUN chmod 755 /root/mysql_bugs.sh
RUN chmod +X /root/mysql_bugs.sh





###testing code###

#



RUN rm /etc/bash.bashrc
ADD bash.bashrc /etc/




#ADD startup.sh /etc/init.d/
#RUN service mysql start
#RUN service apache2 restart

#RUN ./root/mysql_bugs.sh


#RUN 
#RUN ./var/www/html/checksetup.pl







