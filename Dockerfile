FROM python:3.11-trixie

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN mkdir /workspace
WORKDIR /workspace

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY tensorflow-2.20.0.dev0+selfbuilt-cp311-cp311-linux_x86_64.whl .
RUN pip install --no-cache-dir tensorflow-2.20.0.dev0+selfbuilt-cp311-cp311-linux_x86_64.whl
RUN pip install --no-cache-dir --force-reinstall protobuf==5.28.3

EXPOSE 8888

CMD [ "jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root" ]