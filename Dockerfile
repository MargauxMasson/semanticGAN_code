FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel

RUN ls

COPY requirements.txt /workspace/requirements.txt

RUN apt-get update 
RUN apt install -y libgl1-mesa-glx
RUN apt-get install -y libglib2.0-0 libsm6 libxrender1 libxext6
RUN pip install -r /workspace/requirements.txt

WORKDIR /workspace/

CMD "ls"

