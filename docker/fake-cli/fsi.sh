#!/bin/sh

if [ -z "$DOTNET_SDK_VERSION" ]; then
    echo "F# Interactive (fsi): Unknow dotnet version of SDK."
    echo "Could not resolve environment variable: DOTNET_SDK_VERSION"
    exit 1
fi

fsharp_sdk=/usr/share/dotnet/sdk/$DOTNET_SDK_VERSION/FSharp
fsi_path=$fsharp_sdk/fsi.exe

dotnet $fsi_path "$@"
exit $?
