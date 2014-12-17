#
# jpodeszwik/rpi-jenkins Dockerfile
#
 
# Pull base image.
FROM jpodeszwik/rpi-java:1.8.0_06

RUN \
    wget http://mirrors.jenkins-ci.org/war/1.572/jenkins.war && \
    mv jenkins.war /opt

RUN \
    apt-get -y install git

ENV JENKINS_HOME /data
ENV PREFIX /

VOLUME /data

EXPOSE 8080

ADD run.sh /bin/

CMD /bin/run.sh

