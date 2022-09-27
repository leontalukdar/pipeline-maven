#!/bin/bash

echo "***************************"
echo "****** Pushing Image ******"
echo "***************************"

IMAGE="maven-project"

echo "****** Logging In *********"
docker login -u 1207041 -p $PASS
echo "****** Tagging Image ******"
docker tag $IMAGE:$BUILD_TAG 1207041/$IMAGE:$BUILD_TAG
echo "***** Pushing Image *******"
docker push 1207041/$IMAGE:$BUILD_TAG