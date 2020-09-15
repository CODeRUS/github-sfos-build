#!/bin/bash

set -ex

mkdir -p /home/nemo/build
cd /home/nemo/build

sudo mkdir -p /workspace/RPMS
cp -r /workspace/* /home/nemo/build

mb2 -t SailfishOS-${INPUT_RELEASE}-${INPUT_ARCH} build
sudo cp -r RPMS/*.rpm /workspace/RPMS
