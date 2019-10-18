FROM ubuntu

WORKDIR /home/dev

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install build-essentials gcc-arm-none-eabi -y

WORKDIR /usr/project

CMD ["arm-none-eabi-gcc --version"]
