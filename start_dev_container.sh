#!/bin/sh

podman run -it --rm --name groveai-dev -v /home/guy/development/groveai/Seeed_Grove_Vision_AI_Module_V2:/root/groveai-code --device=/dev/ttyACM1 localhost/grove-ai:latest
