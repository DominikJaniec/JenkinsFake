#!/bin/sh

./docker-make.sh

echo ==========================================================
echo === Starting attached interactive Fake CLI container...
echo ===
docker run -it --rm \
    -e JEN_FAKE_ENV_SHOW=true \
    -e JEN_FAKE_SHELL_KEEP=true \
    dominikjaniec/fake-cli
