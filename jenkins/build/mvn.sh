#!/bin/bash

echo "*********************"
echo "**** Building Jar ***"
echo "*********************"

docker run -v $PWD/java-app:/app -v $PWD/root/.m2:/root/.m2 -w /app maven:3.5.4-alpine "$@"