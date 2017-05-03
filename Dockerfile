# Mesos & Jenkins
# Team: Dev
# Author: Giovann Adonis <giovann@rsaweb.co.za>

FROM jenkins:2.46.2
MAINTAINER Giovann Adonis <giovann@rsaweb.co.za>

USER root

#Install Mesos
RUN  apt-get update &&\
     apt-get install -y maven git curl libevent-dev libsasl2-modules
     
ADD http://repos.mesosphere.com/debian/pool/main/m/mesos/mesos_1.1.0-2.0.107.debian81_amd64.deb /tmp/mesos.deb

RUN dpkg -i /tmp/mesos.deb

ADD https://github.com/jenkinsci/mesos-plugin/archive/mesos-0.14.1.zip /tmp/mesos-plugin.zip

RUN cd /tmp/ &&\
    unzip mesos-plugin.zip &&\
    cd /tmp/mesos-plugin-mesos-0.14.1/ && \
    mvn package

USER ${user}
