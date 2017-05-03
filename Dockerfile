# Selene PHP Framework
# Team: Dev
# Author: Giovann Adonis <giovann@rsaweb.co.za>

FROM jenkins:latest


RUN git clone https://github.com/jenkinsci/mesos-plugin.git &&\
        cd mesos-plugin && \
        mvn hpi:run

