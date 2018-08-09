#!/bin/sh

./docker-make.sh

echo ==========================================================
echo === Starting attached interactive Fake CLI container...
echo ===
docker run -it -e JEN_FAKE_KEEP_SHELL=true dominikjaniec/fake-cli
