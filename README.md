# docker-boost

Dockerfile that setups ubuntu with boost library installed. It installs C++ boost libraries (header only) under `/usr/include/boost/`.


## Build
To build the image with Boost version 1.65.1

```bash
./build-docker.sh 1.65.1
```

## Run

To run the above built image

```bash
./run-docker.sh 1.65.1
```
