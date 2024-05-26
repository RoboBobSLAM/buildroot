FROM debian:stable-20240513-slim

RUN apt update && \
    apt install -y \
    which \
    sed \
    make \
    binutils \
    build-essential \
    diffutils \
    gcc \
    g++ \
    bash \
    patch \
    gzip \
    bzip2 \
    perl \
    tar \
    cpio \
    unzip \
    rsync \
    file \
    bc  \
    findutils \
    wget \
    git

RUN mkdir /buildroot

WORKDIR /buildroot

RUN git clone --depth 1 --branch 2024.02.2 https://github.com/buildroot/buildroot.git /buildroot

COPY ./buildroot-src/.config .

CMD make all

