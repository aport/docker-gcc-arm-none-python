FROM modm/arm-none-eabi-gcc:latest
LABEL maintainer="Adam Porter <porter.adam@gmail.com>"
LABEL Description="Image for building ARM Cortex-M projects with gcc-arm-embedded and Python"

RUN apt update -qq && \
    apt upgrade -y -qq && \
    apt install -y -qq \
      python3 \
      python3-pip && \
    apt clean -qq && \
    pip3 install imgtool \
    pip3 install junit_xml