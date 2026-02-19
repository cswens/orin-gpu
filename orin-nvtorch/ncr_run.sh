#!/bin/bash

set -e

IMAGE_NAME="orin-nvtorch"
IMAGE_TAG="latest"

docker run --rm -it \
    --runtime=nvidia --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 \
    --privileged \
    "${IMAGE_NAME}:${IMAGE_TAG}" \
    /bin/bash

