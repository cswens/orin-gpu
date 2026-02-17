#!/bin/bash

set -e

wget https://developer.download.nvidia.com/compute/cusparselt/redist/libcusparse_lt/linux-aarch64/libcusparse_lt-linux-aarch64-0.8.1.1_cuda12-archive.tar.xz

tar -xvf libcusparse_lt-linux-aarch64-0.8.1.1_cuda12-archive.tar.xz --preserve-paths
