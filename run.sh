#!/bin/bash

set -e

IMAGE_NAME="orin-gpu"
IMAGE_TAG="latest"

docker run --rm -it --privileged \
    "${IMAGE_NAME}:${IMAGE_TAG}" \
    /bin/bash

# modprobe tegra_drm
# git clone https://github.com/NVIDIA/cuda-samples.git && cd cuda-samples && git checkout 7ce058b4796783b3b7ca8196c25d5f5b9c380ec4 && cd Samples/1_Utilities/deviceQuery && make && ./deviceQuery

