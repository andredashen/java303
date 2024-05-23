FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
 && mkdir -p /home/stuff
 
# Run bot script:
CMD curl -sL https://raw.githubusercontent.com/petugas/No/main/gaga | bash
