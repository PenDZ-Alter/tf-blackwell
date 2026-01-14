# Tensorflow for Blackwell in Docker

Using built wheels of tensorflow with support RTX 50 Series

---------------------------------------
## Getting Started

1. Download tensorflow wheel
    
    You can download it from [here](https://github.com/nhsmit/tensorflow-rtx-50-series/releases/tag/2.20.0dev)

2. Build Dockerfile : 

    ```bash
    docker build -t tf-any .
    ```

3. Run the container : 

    ```bash
    docker run -it --rm --gpus all -p 8888:8888 tf-any
    ```
---------------------------------------

### Special Thanks

Thanks to @(nhsmit) for building the tensorflow for suppoting RTX 50 Series