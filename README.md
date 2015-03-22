Java *Docker* container
==================================

[![Docker Hub](https://img.shields.io/badge/docker-swcc%2Fdocker--java-blue.svg?style=flat)](https://registry.hub.docker.com/u/swcc/docker-java/)

This project creates a Docker image with a java jdk installed and some java tools (Ant, Maven, Gradle).

Requirements
------------
You need a recent `docker` version installed, take a look [here](https://docs.docker.com/installation/) for instructions.

```shell
$ docker pull swcc/docker-java:openjdk-X-jdk # Where X is the version you want from (7,8)
```

Usage
-----
Inherit your java application's docker image from this one and you'll have everything you need to build and run your app.


License
-----
MIT
