FROM ubuntu:20.04

ENV TZ=TZ=Etc/UTC
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US"
ENV LC_ALL="C"
ENV LC_MESSAGES="en_US.UTF-8"

RUN useradd -m SEL -s /bin/bash

RUN apt-get update
RUN apt-get -y install wget curl vim python3-distutils unzip less
RUN curl -s "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
RUN python3 get-pip.py

RUN mkdir -p /TEST
COPY . /TEST/
RUN chmod -Rv 777 /TEST
