FROM debian:jessie-backports
MAINTAINER Florian Langknecht
LABEL org.label-schema.docker.dockerfile="/Dockerfile" \
      org.label-schema.license="MIT" \
      org.label-schema.url="https://github.com/flangknecht/debian-jdk-maven-openjfx" \
      org.label-schema.vcs-type="Git" \
      org.label-schema.vcs-url="https://github.com/flangknecht/debian-jdk-maven-openjfx.git"


RUN apt update && apt -t jessie-backports -qq -y install \
        openjdk-8-jdk-headless \
        openjdk-8-jre-headless \
	xvfb \
        ca-certificates-java \
        openjfx \
        maven \
	fakeroot

