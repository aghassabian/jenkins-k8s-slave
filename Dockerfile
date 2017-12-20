FROM jenkinsci/jnlp-slave
MAINTAINER aghassabian <aghassabian@inocybe.com>

ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
RUN mkdir -p /home/jenkins/.ssh && \
    chown -R jenkins:jenkins /home/jenkins/.ssh && \
    chmod 700 /home/jenkins/.ssh
USER root
