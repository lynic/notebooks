#!/bin/bash


nvidia-docker run -d --name ml -e DISPLAY=$DISPLAY -e PASSWORD=admin -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/notebooks -p 18888:8888 pydl
