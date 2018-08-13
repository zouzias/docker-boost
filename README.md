# docker-boost

Dockerfile that setups Ubuntu with Boost library installed. It installs the C++ Boost libraries (header only) under `/usr/include/boost/`.


## Build
To build the image with Boost version 1.67.0

```bash
./build-docker.sh 1.67.0
```

## Run

To run the above built image

```bash
./run-docker.sh 1.67.0
```

## Docker Images

To use the docker image (say version 1.67.0), run

```
docker run -it zouzias/boost:1.67.0 bash
```

### Boost versions

Most boost versions are released, see file `boost-versions.txt` for a complete list.
