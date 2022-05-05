#!/usr/bin/env bash

TAG_NAME="skia-canvas-crash-repro"
USE_DOCKERFILE_SLIM=0 # 0 to use node:16-alpine (crashes), 1 to use node:16-slim (works)

if [ $USE_DOCKERFILE_SLIM = "0" ]; then
  DOCKER_FILE="Dockerfile"
else
  DOCKER_FILE="Dockerfile.slim"
fi

docker build . -f $DOCKER_FILE -t $TAG_NAME --platform "linux/amd64"
docker run $TAG_NAME
