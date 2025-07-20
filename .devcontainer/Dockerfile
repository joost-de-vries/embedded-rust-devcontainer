FROM  mcr.microsoft.com/devcontainers/rust:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential pkg-config libusb-1.0-0-dev usbutils cmake

RUN curl -OL https://github.com/raspberrypi/pico-sdk-tools/releases/download/v2.1.1-2/picotool-2.1.1-aarch64-lin.tar.gz \
 &&  tar xzf picotool-2.1.1-aarch64-lin.tar.gz \
 && sudo mv ./picotool/picotool /usr/sbin 


RUN rm -f tar xzf picotool-2.1.1-aarch64-lin.tar.gz \
  && sudo mkdir -p /etc/udev/rules.d \
  && curl -OL https://raw.githubusercontent.com/raspberrypi/picotool/refs/heads/master/udev/99-picotool.rules  \
  && mv ./99-picotool.rules /etc/udev/rules.d/ 

# target the ARM Cortex-M33 cores or Hazard3 RISC-V cores
# see https://doc.rust-lang.org/nightly/rustc/platform-support/thumbv8m.main-none-eabi.html  
RUN  rustup target add thumbv8m.main-none-eabihf \
  && rustup target add riscv32imac-unknown-none-elf


COPY .zshrc /home/vscode/.zshrc
