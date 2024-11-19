FROM ubuntu:20.04

# Install QEMU
RUN apt-get update && apt-get install -y qemu-system qemu-utils

# Create the disk image
RUN mkdir -p /data2 && \
    qemu-img create -f qcow2 /data2/disk.img 10G

# Set up working directory and defaults
WORKDIR /data2
CMD ["qemu-system-ppc", "--version"]

