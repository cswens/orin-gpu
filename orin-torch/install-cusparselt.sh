#!/bin/bash

set -e


mkdir -p /opt/nvidia/cusparselt

wget -O - https://developer.download.nvidia.com/compute/cusparselt/redist/libcusparse_lt/linux-aarch64/libcusparse_lt-linux-aarch64-0.8.1.1_cuda12-archive.tar.xz | tar -xJ -C /opt/nvidia/cusparselt --strip-components=1


ln -sf /opt/nvidia/cusparselt/lib/libcusparseLt.so.0 /usr/lib/libcusparseLt.so.0
ln -sf /opt/nvidia/cusparselt/lib/libcusparseLt.so.0.8.1.1 /usr/lib/libcusparseLt.so.0.8.1.1
ln -sf /opt/nvidia/cusparselt/lib/libcusparseLt_static.a /usr/lib/libcusparseLt_static.a
ln -sf /opt/nvidia/cusparselt/lib/libcusparseLt.so /usr/lib/libcusparseLt.so
ln -sf /opt/nvidia/cusparselt/include/cusparseLt.h /usr/include/cusparseLt.h

