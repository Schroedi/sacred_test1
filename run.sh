#!/usr/bin/env bash

sudo docker build -t keksdev/pytorch .

sudo docker run --runtime=nvidia --ipc=host -it --init --rm --user="$(id -u):$(id -g)" -v ${PWD}:/app keksdev/pytorch bash
