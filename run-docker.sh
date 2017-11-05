#!/bin/bash


if [ $# -eq 0 ]
  then
    echo "Usage: ./build-docker BOOST_VERSION, i.e., 1.65.1"
    exit
fi

BOOST_VERSION=$1
docker run -ti boost:${BOOST_VERSION} /bin/bash

