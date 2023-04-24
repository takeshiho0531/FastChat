FROM --platform=linux/amd64 python:3.10-buster

WORKDIR /src

RUN apt-get update -y && apt-get upgrade -y \
        sudo \
        vim \
        wget

RUN pip install --upgrade pip
RUN pip3 install fschat

RUN git clone https://github.com/lm-sys/FastChat.git

WORKDIR /src/FastChat

RUN pip3 install --upgrade pip && pip3 install -e .
