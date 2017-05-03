# Jenkins & Mesos

Deploy  Jenkins with mesos integration, this gives it the ability to dynamicly deploy and tear down slaves using a mesos cluster.

https://wiki.jenkins-ci.org/display/JENKINS/Mesos+Plugin

https://github.com/jenkinsci/mesos-plugin

# Package Versions

* Jenkins - 2.46.2
* Mesos - 1.0-2

# Jenkins Plugins

* Mesos Plugin - 0.14.1


# Configuration 

Mount /var/jenkins_home to your local volume for persistant storage of configuration 

Under the Cloud Configuration set mesos library to /usr/local/lib/libmesos.so
