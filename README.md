# Jenkins :: Fake the F# Make

Use F# in Jenkins via Fake with Docker

## How-To

### With started `docker` environment

```bash
> docker run --rm -it microsoft/dotnet
```

### Within started `dotnet` container

```bash
> dotnet --version
> fake --version
```

### Install `Fake` via `dotnet`

```bash
> dotnet tool install fake-cli -g && PATH="$PATH:/root/.dotnet/tools"
```

## Links

* https://jenkins.io/
* https://www.docker.com/
* https://fake.build/
* https://fsharp.org/

----
