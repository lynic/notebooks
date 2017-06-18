#!/bin/bash


nvidia-docker run -d --name ml -e DISPLAY=$DISPLAY -e PASSWORD=admin -v /tmp/.X11-unix:/tmp/.X11-unix -v $(pwd):/notebooks -p 18888:8888 -p 16006:6006 -p 15900:5900 pydl:latest
