#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Usage: ./build-docker BOOST_VERSION, i.e., 1.65.1"
    exit
fi

BOOST_VERSION="$1"
BOOST_VERSION_=${BOOST_VERSION//./_}

docker rmi zouzias/boost:${BOOST_VERSION}
docker build . -t zouzias/boost:${BOOST_VERSION}
