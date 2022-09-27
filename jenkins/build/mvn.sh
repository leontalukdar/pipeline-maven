#!/bin/bash

echo "*********************"
echo "**** Building Jar ***"
echo "*********************"

WORKSPACE=/home/wahidul/Projects/jenkins/jenkins-docker/jenkins_home/workspace/pipeline-docker-maven
docker run -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3.5.4-alpine "$@"