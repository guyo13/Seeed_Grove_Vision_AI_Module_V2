#!/bin/sh

podman run -it --rm --name groveai-dev -v `pwd`:/root/groveai-code --device=/dev/ttyACM1 localhost/grove-ai:latest
