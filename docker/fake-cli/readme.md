# FAKE - F# Make

Is a build automation tool for .NET. Tasks and dependencies are specified in a DSL which is integrated in F#.

More information under: https://fake.build/

----

## Environment variables

* `JEN_FAKE_RUN_REPO_SOURCE`
  * Default: `https://github.com/DominikJaniec/JenkinsFake`
  * URL of repository which will be cloned before _start_ in to `/fake/repo/`. By default it is this repository, as for demo purpose. When empty, nothing will be cloned.
* `JEN_FAKE_RUN_REPO_BRANCH`
  * Default: `master`
  * Branch of cloned repository which will be checked-out before _start_.
* `JEN_FAKE_RUN_FSX_PATH`
  * Default: `build.fsx`
  * Repository relative path of `build.fsx` file consumed by _Fake_ for _start_.
* `JEN_FAKE_RUN_TARGET`
  * Default: `Default`
  * Fake's _Target_ name called with `build.fsx` file as _start_ via `fake run` command.
* `JEN_FAKE_CLI_ARGS`
  * Default: _empty_
  * When provided, will override arguments passed to `fake` as _start_.
* `JEN_FAKE_RUN_EXECUTE`
  * Default: `true`
  * When `false`, will not execute _start_.
* `JEN_FAKE_README_SHOW`
  * Default: `true`
  * When `true`, will display _readme_ file as welcome message.
* `JEN_FAKE_README_PATH`
  * Default: `/fake/readme.md`
  * Path to _readme_ file. It is desired to welcome users or explain purpose of _start_ execution. Could be relative within cloned repository, but by default it is this file.
* `JEN_FAKE_ENV_SHOW`
  * Default: `false`
  * When `true`, will display all environment variables and tools versions (`dotnet` & `fake`) before anything.
* `JEN_FAKE_SHELL_KEEP`
  * Default: `true`
  * When `false`, will terminate container at end. In case of `true`, `bash` shell will be kept for further use.

----

## You might want to execute

* `dotnet --help`
* `fake --help`
