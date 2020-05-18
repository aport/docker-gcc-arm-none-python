FROM cimg/python:3.7
LABEL maintainer="Adam Porter <porter.adam@gmail.com>"
LABEL Description="Image for building ARM Cortex-M projects with gcc-arm-embedded and Python"
WORKDIR /work

ADD . /work

RUN wget -qO- https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/gcc-arm-none-eabi-9-2019-q4-major-x86_64-linux.tar.bz2 | tar -xj
ENV PATH "/work/gcc-arm-none-eabi-9-2019-q4-major/bin:$PATH"