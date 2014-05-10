# A cutting edge JEE development environment using:
#	GVM - for groovy/grails environment & SDK management
# 	Grails - the latest version at time of installation, thanks to GVM
# 	Oracle JDK 8
# 	Tomcat 7
# 	IntelliJ - Ultimate, 30-day free trial of version 13

FROM ubuntu

MAINTAINER Alex Collins, alexcollins.org

EXPOSE 6000

EXPOSE 22

# add-apt-repository
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:webupd8team/java

RUN apt-get update

# Trick the JDK install into accepting the license
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN apt-get install -y oracle-java8-installer

# Tomcat

RUN apt-get install -y tomcat7

RUN apt-get install -y curl unzip tar openssh-server

# Installing the environment required: xserver, xdm, flux box, roc-filer and ssh
RUN apt-get install -y xpra rox-filer ssh pwgen xserver-xephyr xdm fluxbox sudo

# Configuring xdm to allow connections from any IP address and ssh to allow X11 Forwarding.
RUN sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
RUN sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
RUN ln -s /usr/bin/Xorg /usr/bin/X
RUN echo X11Forwarding yes >> /etc/ssh/ssh_config

# Upstart and DBus have issues inside docker. We work around in order to install firefox.
RUN dpkg-divert --local --rename --add /sbin/initctl && ln -sf /bin/true /sbin/initctl

# System setup complete, now create dev environment

RUN yes | adduser dev

USER dev

ENV HOME /home/dev/

WORKDIR /home/dev/

# Grails

RUN curl -s get.gvmtool.net | bash

#RUN yes | gvm install grails

# IntelliJ

RUN mkdir -p ~/intellij/

RUN wget http://download.jetbrains.com/idea/ideaIU-13.1.2.tar.gz -O intellij/idea-13.1.2.tar.gz

RUN tar zxf intellij/idea*.tar.gz -C intellij/

USER root
