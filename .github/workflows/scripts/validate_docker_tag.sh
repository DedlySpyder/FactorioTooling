#!/usr/bin/env bash

REPO="dedlyspyder"
IMAGE="factorio-headless-ubuntu"

if curl -sSLf "https://hub.docker.com/v2/repositories/$REPO/$IMAGE/tags/$INPUT_VERSION" > /dev/null; then
  echo "exists=true" >> $GITHUB_OUTPUT
else
  echo "exists=false" >> $GITHUB_OUTPUT
fi
