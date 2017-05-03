# Selene PHP Framework
# Team: Dev
# Author: Giovann Adonis <giovann@rsaweb.co.za>

FROM jenkins:latest
MAINTAINER Giovann Adonis <giovann@rsaweb.co.za>

USER root

#Install Mesos
RUN  apt-get update &&\
     apt-get install -y maven git curl libevent-dev libsasl2-modules
     
ADD http://repos.mesosphere.com/debian/pool/main/m/mesos/mesos_1.1.0-2.0.107.debian81_amd64.deb /tmp/mesos.deb
RUN dpkg -i /tmp/mesos.deb

ADD https://github.com/jenkinsci/mesos-plugin/archive/master.zip /tmp/mesos-plugin 

RUN cd /tmp/ &&\
    unzip master.zip &&\
    cd /tmp/mesos-plugin-master/ && \
    mvn hpi:run

USER ${user}
