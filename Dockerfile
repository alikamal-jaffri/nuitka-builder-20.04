FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt update && \
    apt install -y python3.13 python3.13-dev python3-distutils python3-pip python3.13-venv && \
    apt install -y ccache
    # python3.13 -m venv venv && \
    # source venv/bin/activate && \
    # pip install setuptools && \
RUN python3.13 -m venv /venv
ENV PATH="/venv/bin:$PATH"
    # apt install -y gcc build-essential && \
RUN pip install --upgrade pip && \
    pip install nuitka

WORKDIR /app