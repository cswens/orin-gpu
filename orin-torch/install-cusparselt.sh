#!/bin/bash

set -e

# Download and install cuSPARSELt
mkdir -p /opt/nvidia/cusparselt
wget -O - https://developer.download.nvidia.com/compute/cusparselt/redist/libcusparse_lt/linux-aarch64/libcusparse_lt-linux-aarch64-0.8.1.1_cuda12-archive.tar.xz | tar -xJ -C /opt/nvidia/cusparselt --strip-components=1

# Find and create symlinks for all library files
find /opt/nvidia/cusparselt/lib -name "*.so*" -o -name "*.a" | while read lib; do
    ln -sf "$lib" "/usr/lib/$(basename "$lib")"
done

# Find and create symlinks for all header files
find /opt/nvidia/cusparselt/include -name "*.h" | while read header; do
    ln -sf "$header" "/usr/include/$(basename "$header")"
done

