FROM ubuntu

# For add-apt-repository
RUN apt-get install -y python-software-properties

RUN apt-get install -y software-properties-common

RUN add-apt-repository -y ppa:webupd8team/java

RUN apt-get update

RUN apt-get install -y oracle-java8-installer

RUN apt-get install -y tomcat7

RUN apt-get install -y curl

RUN curl -s get.gvmtool.net | bash

RUN apt-get purge curl
