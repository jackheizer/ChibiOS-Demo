FROM debian:stretch-slim

WORKDIR /home/dev

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install make gcc-arm-none-eabi openocd -y

WORKDIR /usr/project

CMD ["arm-none-eabi-gcc --version"]
