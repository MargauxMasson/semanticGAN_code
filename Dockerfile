FROM pytorch/pytorch:1.7.1-cuda11.0-cudnn8-devel

COPY requirements.txt /workspace/requirements.txt

RUN apt-get update
RUN apt install -y libgl1-mesa-glx
RUN apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6

RUN pip install -r /workspace/requirements.txt

WORKDIR /workspace/
CMD "ls"
