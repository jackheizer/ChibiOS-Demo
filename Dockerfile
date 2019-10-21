FROM debian:stretch-slim

WORKDIR /home/dev

RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/backports.list && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install make gcc-arm-none-eabi udev -y && \
    apt-get -t stretch-backports install openocd -y

WORKDIR /usr/project
