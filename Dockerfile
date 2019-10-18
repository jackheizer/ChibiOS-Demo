FROM debian:stretch-slim

WORKDIR /home/dev

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install make gcc-arm-none-eabi openocd udev -y && \
    cp /lib/udev/rules.d/60-openocd.rules /etc/udev/rules.d

WORKDIR /usr/project
