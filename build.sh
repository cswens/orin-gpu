#!/bin/bash

set -e

DOCKERFILE="DockerFile"
IMAGE_NAME="orin-gpu"
IMAGE_TAG="latest"

echo "Building Docker image: ${IMAGE_NAME}:${IMAGE_TAG}"
docker build -t "${IMAGE_NAME}:${IMAGE_TAG}" -f "${DOCKERFILE}" .

echo "Build complete!"