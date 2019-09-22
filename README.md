# WRF Container

Repository for the creation of an wrf container using ArchLinux.

## Usage

# Docker
Basic docker image with a deployed wrf model with the given Dockerfile via
```
docker build -t wrf_archlinux /path/to/dockerfile
```
The image contains:
* Required user and packages
* Deployment of WRFV3 v3.9.1

## License
see LICENSE

## Todo
Basic lxc container
* ArchLinux Image
* Minimal required libraries
* Deployment of a given WRF version
* Usable for calculating a given forecast period

Basic docker container with
* ArchLinux Image
* Minimal required libraries
* Deployment of a given WRF version
* Usable for calculating a given forecast period
* Optimization of the container image size
