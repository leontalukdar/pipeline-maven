#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
scp -i /opt/prod /tmp/.auth prod-user@13.214.187.188:/tmp/.auth
scp -i /opt/prod ./jenkins/deploy/publish.sh prod-user@13.214.187.188:/tmp/publish
ssh -i /opt/prod prod-user@13.214.187.188 "/tmp/publish"