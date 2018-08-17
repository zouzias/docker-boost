#!/bin/bash

# Build boost docker image

if [ $# -eq 0 ]
  then
    echo "Usage: ./build-docker BOOST_VERSION, i.e., 1.65.1"
    exit
fi

ORG="zouzias"
BOOST_VERSION="$1"
BOOST_VERSION_=${BOOST_VERSION//./_}

docker rmi ${ORG}/boost:${BOOST_VERSION}
docker build . -t ${ORG}/boost:${BOOST_VERSION} --build-arg BOOST_VERSION=${BOOST_VERSION} \
	--build-arg BOOST_VERSION_=${BOOST_VERSION_}
