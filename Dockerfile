# Selene PHP Framework
# Team: Dev
# Author: Giovann Adonis <giovann@rsaweb.co.za>

FROM jenkins:latest

USER root

RUN  apt-get install -y maven git curl

ADD https://github.com/jenkinsci/mesos-plugin/archive/master.zip /tmp/mesos-plugin 

RUN cd /tmp/ &&\
     unzip master.zip &&\
    cd /tmp/mesos-plugin-master/ && \
    mvn hpi:run

USER ${user}
