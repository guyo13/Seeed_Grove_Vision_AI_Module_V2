FROM ubuntu:24.04

ENV PATH="${PATH}:/root/arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-eabi/bin/"
RUN apt update && \
	apt install -y minicom make wget tar xz-utils

COPY ./minirc.dfl /etc/minicom/

RUN cd ~ && \
	wget https://developer.arm.com/-/media/Files/downloads/gnu/13.2.rel1/binrel/arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz && \
	tar -xvf arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz || true && \
	rm arm-gnu-toolchain-13.2.rel1-x86_64-arm-none-eabi.tar.xz && \
	chown -R root:root arm-gnu-toolchain-13.2.Rel1-x86_64-arm-none-eabi
