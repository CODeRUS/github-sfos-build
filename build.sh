#!/bin/bash

set -ex

echo "Version 1"

mkdir -p $GITHUB_WORKSPACE/RPMS
sudo chmod a+w $GITHUB_WORKSPACE/RPMS
docker run --rm --privileged \
  -v $GITHUB_WORKSPACE:/workspace \
  -v $GITHUB_ACTION_PATH:/action \
  -e INPUT_RELEASE \
  -e INPUT_ARCH \
  coderus/sailfishos-platform-sdk$INPUT_SUFFIX:$INPUT_RELEASE \
  "/bin/bash" "/action/docker.sh"
