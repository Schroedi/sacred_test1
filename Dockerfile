FROM nvidia/cuda:9.1-cudnn7-runtime-ubuntu16.04

# Install some basic utilities
RUN apt-get update && apt-get install -y \
    curl \
    ca-certificates \
    sudo \
    git \
    bzip2 \
    wget \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

# we need a newer pip
#pip3 install --upgrade pip

# install software-properties-common to add repo
# # python 3.6
# RUN add-apt-repository ppa:jonathonf/python-3.6 \
#     && apt-get update && apt-get install -y   python3-pip
# update python binary? http://ubuntuhandbook.org/index.php/2017/07/install-python-3-6-1-in-ubuntu-16-04-lts/


# RUN pip3 install http://download.pytorch.org/whl/cu92/torch-0.4.1.post2-cp37-cp37m-linux_x86_64.whl
# RUN pip3 install torchvision

# Create a working directory
RUN mkdir /app
WORKDIR /app

# Create a non-root user and switch to it
RUN adduser --disabled-password --gecos '' --shell /bin/bash user \
 && chown -R user:user /app
RUN echo "user ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/90-user
USER user

# All users can use /home/user as their home directory
ENV HOME=/home/user
RUN chmod 777 /home/user


# Set the default command to python3
CMD ["python3"]
