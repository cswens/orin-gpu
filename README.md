# orin-gpu



## Resources

### Balena Example Containers
https://github.com/balena-io-examples/jetson-examples/




## PyTorch
https://pytorch.org/get-started/locally/
https://pytorch.org/get-started/locally/#linux-package-manager




https://github.com/pytorch/pytorch#from-source


Check here but they stopped updating after 6.1
https://docs.nvidia.com/deeplearning/frameworks/install-pytorch-jetson-platform/index.html


Need to figure out how to install nvidia-cudnn and cusparselt

sudo apt install python3-pip
pip3 install torch torchvision --index-url https://download.pytorch.org/whl/cu126 --break-system-packages

pip3 install transformers==5.1.0 --break-system-packages

copy transformers-test.py to container
python3 transformers-test.py

Get the following errors when running transformers test 
torch.AcceleratorError: CUDA error: no kernel image is available for execution on the device
Search for `cudaErrorNoKernelImageForDevice' in https://docs.nvidia.com/cuda/cuda-runtime-api/group__CUDART__TYPES.html for more information.
CUDA kernel errors might be asynchronously reported at some other API call, so the stacktrace below might be incorrect.
For debugging consider passing CUDA_LAUNCH_BLOCKING=1
Compile with `TORCH_USE_CUDA_DSA` to enable device-side assertions.