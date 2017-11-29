FROM ubuntu:rolling
MAINTAINER Marco Inacio <dockerfiles@marcoinacio.com>

RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get dist-upgrade -y && \
    apt-get install -y nano build-essential screen procps net-tools \
                       nmap unzip ncdu man-db wget auto-apt-proxy \
                       iproute2 && \
    apt-get autoclean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/*
