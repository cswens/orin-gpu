#!/bin/bash

set -e

IMAGE_NAME="orin-torch"
IMAGE_TAG="latest"

docker run --rm -it --privileged \
    "${IMAGE_NAME}:${IMAGE_TAG}" \
    /bin/bash

