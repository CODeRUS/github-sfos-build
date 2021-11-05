#!/bin/bash

set -ex

mkdir -p /home/mersdk/build
cd /home/mersdk/build

sudo mkdir -p /workspace/RPMS
cp -r /workspace/* /home/mersdk/build

mb2 -t SailfishOS-${INPUT_RELEASE}-${INPUT_ARCH} build
sudo cp -r RPMS/*.rpm /workspace/RPMS
