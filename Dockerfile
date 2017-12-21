FROM jenkinsci/jnlp-slave
MAINTAINER aghassabian <aghassabian@inocybe.com>

USER root
RUN apt-get update && \
      apt-get -y install sudo

RUN usermod -a -G sudo jenkins
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
