#!/bin/sh

if [ "$JEN_FAKE_README_SHOW" = "true" ]; then
    cat "$JEN_FAKE_README_PATH"
fi

fake run build.fsx

if [ "$JEN_FAKE_KEEP_SHELL" = "true" ]; then
    bash
fi
