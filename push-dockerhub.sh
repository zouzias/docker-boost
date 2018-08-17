#!/bin/bash


ORG="zouzias"

if [ $# -eq 0 ]
  then
    echo "Usage: ./build-docker BOOST_VERSION, i.e., 1.65.1"
    exit
fi

./build-docker.sh $1
docker login
docker push ${ORG}/boost:$1
