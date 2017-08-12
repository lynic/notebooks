#!/bin/bash
set -x

VERSION=0.2.0
DOCKERFILE=Dockerfile.conda

docker build -t pydl:${VERSION} -f ${DOCKERFILE} .
