# Selene PHP Framework
# Team: Dev
# Author: Giovann Adonis <giovann@rsaweb.co.za>

FROM jenkins:latest

ADD https://github.com/jenkinsci/mesos-plugin/archive/master.zip /tmp/mesos-plugin 

RUN cd /tmp/mesos-plugin && \
    mvn hpi:run

