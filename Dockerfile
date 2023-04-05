FROM --platform=linux/amd64 python:3.10-buster as base

WORKDIR /src

RUN apt-get update -y && apt-get upgrade -y

RUN pip install --upgrade pip

#RUN apt-get install -y libgl1-mesa-dev && \  
    #apt-get install -y libglib2.0-0
# opencv-python用


RUN apt install git -y && git clone https://github.com/takeshiho0531/FastChat.git

RUN pip install poetry==1.4.0

WORKDIR /src/FastChat

RUN pip3 install --upgrade pip && pip3 install -e .


#RUN mkdir -p -m 0600 ~/.ssh && ssh-keyscan github.com >> ~/.ssh/known_hosts

#RUN poetry config virtualenvs.create false
#COPY pyproject.toml poetry.lock ./
#COPY imgs_json.json ./

#FROM base as dev
#RUN --mount=type=ssh poetry install --no-root
#RUN --mount=type=ssh --mount=type=cache,target=/root/.cache poetry install --no-dev --no-root

#COPY ./api /src/api/
WORKDIR /src
