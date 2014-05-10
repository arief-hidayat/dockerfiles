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

RUN apt-get install -y tomcat7

RUN apt-get install -y curl

RUN curl -s get.gvmtool.net | bash

RUN apt-get purge -y curl

RUN yes | gvm install grails
