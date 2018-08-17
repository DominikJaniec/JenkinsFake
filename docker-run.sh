#!/bin/sh

./docker-make.sh

echo ==========================================================
echo === Running Fake\'s default Task inside container...
echo ===
docker run -it --rm dominikjaniec/fake-cli
