FROM jenkinsci/jnlp-slave
MAINTAINER aghassabian <aghassabian@inocybe.com>

USER root
RUN apt-get update && \
      apt-get -y install sudo
ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
RUN usermod -a -G sudo jenkins
RUN echo "jenkins ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

USER jenkins
