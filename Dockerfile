FROM nvidia/cuda:13.1.1-cudnn-devel-ubuntu22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    python3.12 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /workspace
WORKDIR /workspace

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /workspace
WORKDIR /workspace

COPY requirements.txt /tmp
COPY tensorflow-2.22.0-cp312-cp312-linux_x86_64.whl /tmp/

RUN pip install --no-cache-dir -r /tmp/requirements.txt

RUN pip install --upgrade pip
RUN pip install keras packaging numpy requests
RUN pip install /tmp/tensorflow-2.22.0-cp312-cp312-linux_x86_64.whl

EXPOSE 8888

CMD ["python3.12", "-c", "import tensorflow as tf; print('GPU Ready:', tf.config.list_physical_devices('GPU'))"]
CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root" ]