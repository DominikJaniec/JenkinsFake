#!/bin/sh

echo ==========================================================
echo === Building Docker image of Fake CLI container...
echo ===
docker build -t dominikjaniec/fake-cli ./docker/fake-cli
