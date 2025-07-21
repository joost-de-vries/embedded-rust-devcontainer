FROM  mcr.microsoft.com/devcontainers/rust:latest

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends build-essential pkg-config libusb-1.0-0-dev usbutils libudev-dev cmake

RUN curl -OL https://github.com/raspberrypi/pico-sdk-tools/releases/download/v2.1.1-2/picotool-2.1.1-aarch64-lin.tar.gz \
 &&  tar xzf picotool-2.1.1-aarch64-lin.tar.gz \
 && sudo mv ./picotool/picotool /usr/sbin 


RUN rm -f tar xzf picotool-2.1.1-aarch64-lin.tar.gz \
  && sudo mkdir -p /etc/udev/rules.d \
  && curl -OL https://raw.githubusercontent.com/raspberrypi/picotool/refs/heads/master/udev/99-picotool.rules  \
  && mv ./99-picotool.rules /etc/udev/rules.d/ 

RUN cargo install cargo-binstall \
  && cargo binstall -y --disable-telemetry probe-rs-tools \
  && cargo install elf2uf2-rs

COPY .zshrc /home/vscode/.zshrc
