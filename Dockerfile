FROM phusion/baseimage:latest

RUN apt-get update

# Install java
RUN apt-get install -y openjdk-7-jdk

# Install ant
RUN apt-get install -y ant

# Install maven
RUN apt-get install -y maven

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
