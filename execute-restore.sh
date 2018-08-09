#!/bin/sh

echo ==========================================================
echo === Restoring paket dependencies of defaut Task...
echo ===

rm -vf executor/build.fsx.lock

./execute-test.sh
