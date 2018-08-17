#!/bin/sh


if [ "$JEN_FAKE_ENV_SHOW" = "true" ]; then
    echo "===================================================="
    echo "== Current container environment variables:"
    env | sort

    echo "===================================================="
    echo "== Tools versions:"
    echo "== == dotnet"
    dotnet --version
    echo "== == fake"
    fake --version
fi


repo=/fake/repo


if [ ! -z "$JEN_FAKE_RUN_REPO_SOURCE" ]; then
    echo "===================================================="
    echo "== Using requested repository"
    echo "==     from $JEN_FAKE_RUN_REPO_SOURCE"
    echo "==     at branch: $JEN_FAKE_RUN_REPO_BRANCH"

    git clone --single-branch \
        -b "$JEN_FAKE_RUN_REPO_BRANCH" \
        "$JEN_FAKE_RUN_REPO_SOURCE" "$repo"
fi


if [ "$JEN_FAKE_README_SHOW" = "true" ]; then
    readme=$JEN_FAKE_README_FILE
    if [ ! -f $readme ]; then
        readme=$repo/$readme
    fi

    echo "===================================================="
    echo "== Welcom ReadMe message from file: $readme"
    cat "$readme"
fi


if [ "$JEN_FAKE_EXECUTE" = "true" ]; then
    echo "===================================================="
    echo "== Executing the Fake - F# Make"

    if [ ! -z "$JEN_FAKE_CLI_ARGS" ]; then
        echo "==    with arguments: $JEN_FAKE_CLI_ARGS"

        fake $JEN_FAKE_CLI_ARGS
    else
        echo "==    as run of target: $JEN_FAKE_RUN_TARGET"
        echo "==    from file: $repo/$JEN_FAKE_RUN_FSX_FILE"

        fake run "$repo/$JEN_FAKE_RUN_FSX_FILE" -- \
            --target "$JEN_FAKE_RUN_TARGET"
    fi
fi


if [ "$JEN_FAKE_SHELL_KEEP" = "true" ]; then
    bash
fi
