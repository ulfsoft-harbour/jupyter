#!/bin/bash

set -e

docker build -f Dockerfile -t surveily.developer.ai.jupyter:test .
docker run --rm -it --gpus all -p 8888:8888 surveily.developer.ai.jupyter:test
# docker run --rm -it surveily.developer.ai.jupyter:test bash