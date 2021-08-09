FROM python:3.7.6

RUN mkdir /workspace/
COPY requirements.txt /workspace/requirements.txt
# COPY . /workspace/semanticGAN

RUN pip install --upgrade pip
RUN pip3 install -r /workspace/requirements.txt

WORKDIR /workspace/

CMD "ls"
ENV PYTHONDONTWRITEBYTECODE=true

