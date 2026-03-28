# Tensorflow for Blackwell in Docker

Using built wheels of tensorflow with support RTX 50 Series

## Builds Specifications

> [!WARNING]
> **Community-Sourced & Untested**: This configuration was built manually and has not been fully verified. Proceed with caution and please report any bugs or installation hurdles in the Issues tab.

> [!CAUTION]
> **Use at Your Own Risk**: I am not responsible for potential hardware instability or data loss. Ensure you have backups before attempting this build on production systems.

### Software Stack

- Distro/OS : Arch Linux
- Tensorflow Version : 2.20.0.dev0
- Python : 3.12

### Nvidia Acceleration

- Nvidia Driver : 595.58.03
- CUDA : 13.1.1
- cuDNN : 9.19.1
- NCCL : 2.28.9
- NVSHMEM : 3.5.21
- Build Capabilities : "sm_120"

---------------------------------------
## Getting Started

1. Download tensorflow wheel
    
    You can download it from [here](https://github.com/nhsmit/tensorflow-rtx-50-series/releases/tag/2.20.0dev)

2. Build Dockerfile : 

    ```bash
    docker build -t tf-blackwell .
    ```

3. Run the container : 

    ```bash
    docker run -it --rm --gpus all -p 8888:8888 tf-any
    ```
---------------------------------------
## Using Docker Compose

1. Download tensorflow wheel
    
    You can download it from [here](https://example.com)

2. For the first time, run this command : 

    ```bash
    docker compose up -d --build
    ```

3. If you want to running as usual, use this command : 

    ```bash
    docker compose up -d
    ```

### Special Thanks