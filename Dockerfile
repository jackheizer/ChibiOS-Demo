FROM frolvlad/alpine-glibc:latest

WORKDIR /home/dev

RUN apk --update --no-cache add --virtual build-dependencies \
    bzip2-dev \
    ca-certificates \
    openssl \
    tar \
    w3m \
    && wget https://developer.arm.com/-/media/Files/downloads/gnu-rm/5_4-2016q3/gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 \
    && tar xvf gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 \
    && rm gcc-arm-none-eabi-5_4-2016q3-20160926-linux.tar.bz2 \
    && apk del build-dependencies \
    && rm -rf /home/dev/gcc-arm-none-eabi-5_4-2016q3-20160926-linux/share/doc

ENV PATH="/home/dev/gcc-arm-none-eabi-5_4-2016q3-20160926-linux/bin:${PATH}"

WORKDIR /usr/project

CMD ["gcc --version"]
