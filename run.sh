#!/usr/bin/env bash

docker build -t keksdev/pytorch .

docker run --runtime=nvidia --ipc=host -it --init --rm --user="$(id -u):$(id -g)" -v ${PWD}:/app keksdev/pytorch bash
