#!/bin/sh

if [ "$FAKE_README_SHOW" = "true" ]; then
    cat "$FAKE_README_PATH"
fi

if [ "$FAKE_KEEP_SHELL" = "true" ]; then
    bash
fi
