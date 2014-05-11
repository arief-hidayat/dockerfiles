# A cutting edge JEE development environment using:
#	GVM - for groovy/grails environment & SDK management
# 	Grails - the latest version at time of installation, thanks to GVM
# 	Oracle JDK 8
# 	Tomcat 7
# 	IntelliJ - Ultimate, 30-day free trial of version 13
#
# X-related setup thanks to github.com/rogaha/docker-desktop

FROM ubuntu

MAINTAINER Alex Collins, alexcollins.org

# add-apt-repository so we can install JDK8
RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:webupd8team/java

RUN apt-get update

# Trick the JDK install into accepting the license
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN apt-get install -y oracle-java8-installer tomcat7 curl unzip tar openssh-server xpra rox-filer ssh pwgen xserver-xephyr xdm fluxbox sudo xserver-xorg-video-vesa

# Configure X for remote connection
RUN sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
RUN sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess
RUN ln -s /usr/bin/Xorg /usr/bin/X
RUN echo X11Forwarding yes >> /etc/ssh/ssh_config

# System setup complete, now create dev environment

RUN yes | adduser dev

USER dev

ENV HOME /home/dev

WORKDIR /home/dev/

RUN curl -s get.gvmtool.net | bash

RUN wget http://download.jetbrains.com/idea/ideaIU-13.1.2.tar.gz -O ~/idea.tar.gz

RUN tar zxf idea.tar.gz

ADD ./setup.sh /home/dev/install-grails.sh

EXPOSE 6000

EXPOSE 22
