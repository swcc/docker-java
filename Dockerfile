FROM phusion/baseimage:latest

RUN apt-get update

# Install java
RUN apt-get install -y openjdk-8-jdk

# Install ant
RUN apt-get install -y ant

# Install maven
RUN apt-get install -y maven

# Install tools
RUN apt-get install -y wget

# Clean up APT when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install gradle
ENV GRADLE_VERSION=2.2.1
RUN wget https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip
RUN unzip "gradle-$GRADLE_VERSION-bin.zip" && rm "gradle-$GRADLE_VERSION-bin.zip"
RUN mv gradle-$GRADLE_VERSION /opt/
RUN ln -s /opt/gradle-$GRADLE_VERSION/bin/gradle /usr/bin/
