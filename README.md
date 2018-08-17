# Jenkins :: Fake the F# Make

Use F# in Jenkins via Fake with Docker

## How-To

### With started `docker` environment

```bash
> docker run --rm -it microsoft/dotnet
```

### Install `Fake` via `dotnet`

```bash
> dotnet tool install fake-cli -g \
    && PATH="$PATH:/root/.dotnet/tools"
```

## Install `Paket` and `Fake` on Windows

```cmd
> choco install dotnetcore-sdk
> choco install paket
> choco install fake
```

## Links

* https://jenkins.io/
* https://www.docker.com/
* https://fake.build/
* https://fsharp.org/
* https://chocolatey.org/

----
