#!/bin/bash

set -e

IMAGE_NAME="orin-nvtorch"
IMAGE_TAG="latest"

docker run --rm -it --privileged \
    "${IMAGE_NAME}:${IMAGE_TAG}" \
    /bin/bash
