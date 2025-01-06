#!/bin/bash

set -ex

mkdir -p build
cd build
cp -r /workspace/* .
mb2 -t SailfishOS-${INPUT_RELEASE}-${INPUT_ARCH} build
mkdir -p /workspace/RPMS
cp -r RPMS/*.rpm /workspace/RPMS
