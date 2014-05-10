# A cutting edge JEE development environment using:
# GVM - for groovy/grails environment & SDK management
# Grails - the latest version at time of installation, thanks to GVM
# Oracle JDK 8
# Tomcat 7
# IntelliJ - Ultimate, 30-day free trial of version 13
#

FROM ubuntu

# For add-apt-repository
RUN apt-get install -y python-software-properties

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:webupd8team/java

RUN apt-get update

# Trick the JDK install into accepting the license
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections

RUN echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

RUN apt-get install -y oracle-java8-installer

# Tomcat

RUN apt-get install -y tomcat7

# GVM

RUN apt-get install -y curl unzip tar

RUN curl -s get.gvmtool.net | bash

# Grails

RUN yes | gvm install grails

# IntelliJ

RUN mkdir -p /opt/intellij/

RUN chmod a+rw /opt/intellij/

RUN wget http://download.jetbrains.com/idea/ideaIU-13.1.2.tar.gz -O /opt/intellij/idea-13.1.2.tar.gz

RUN tar zxf /opt/intellij/idea*.tar.gz -C /opt/intellij/

# Now clean-up non-essential tools
RUN apt-get purge -y curl unzip tar
