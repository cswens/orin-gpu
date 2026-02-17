#!/bin/bash

set -e

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

DOCKERFILE="DockerFile"
IMAGE_NAME="orin-torch"
IMAGE_TAG="latest"

echo "Building Docker image: ${IMAGE_NAME}:${IMAGE_TAG}"
echo "Script directory: ${SCRIPT_DIR}"
docker build --progress=plain --no-cache -t "${IMAGE_NAME}:${IMAGE_TAG}" -f "${SCRIPT_DIR}/${DOCKERFILE}" "${SCRIPT_DIR}"

echo "Build complete!"
