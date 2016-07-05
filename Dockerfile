FROM ubuntu:14.04

RUN apt-get update

RUN apt-get install -y  maven git nginx 

RUN git clone https://github.com/jenkinsci/mesos-plugin.git &&\
        cd mesos-plugin && \
        mvn hpi:run

RUN echo "daemon off;" >> /etc/nginx/nginx.conf 

EXPOSE 8080

CMD ["ngnix"]

