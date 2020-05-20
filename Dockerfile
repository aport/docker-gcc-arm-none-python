FROM hardwario/gcc-arm-embedded:9-2019-q4-major

LABEL maintainer="Adam Porter <porter.adam@gmail.com>"
LABEL Description="Image for building ARM Cortex-M projects with gcc-arm-embedded and Python"

RUN pip3 install imgtool junit_xml pyparsing

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8