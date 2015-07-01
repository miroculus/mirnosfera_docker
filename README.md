# quay.io/miroculus/mirnosfera

Contains the Dockerfile for creating the base image for deploying the mirnosfera to aptible.

Using an external image instead of installing everything from the Dockerfile inside the
mirnosfera helps to speed up the build in Aptible since docker images are cached after the
first installation.

## How to update the image

* Change the Dockefile

* From your terminal run `docker build -t miroculus/mirnosfera .`

* Follow the steps on [Docker images](https://docs.docker.com/userguide/dockerimages/) to create a new container

* Commit the container `docker commit 4f1b1bcb027a quay.io/miroculus/mirnosfera:v1`, remember to increase the version `v1, v2, etc`

* Push the new commit to the repo `docker push quay.io/miroculus/mirnosfera:v1`

* Update the Dockerfile inside the mirnosfera to match the new version of the image
