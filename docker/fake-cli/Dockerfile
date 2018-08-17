FROM microsoft/dotnet

RUN dotnet tool install fake-cli --global
ENV PATH $PATH:/root/.dotnet/tools

WORKDIR /fake
COPY readme.md /fake/
COPY execute.sh /fake/
RUN chmod +x /fake/execute.sh

ENV JEN_FAKE_RUN_REPO_SOURCE https://github.com/DominikJaniec/JenkinsFake
ENV JEN_FAKE_RUN_REPO_BRANCH master
ENV JEN_FAKE_RUN_FSX_FILE build.fsx
ENV JEN_FAKE_RUN_TARGET Default
ENV JEN_FAKE_CLI_ARGS ""
ENV JEN_FAKE_EXECUTE true
ENV JEN_FAKE_README_SHOW true
ENV JEN_FAKE_README_FILE /fake/readme.md
ENV JEN_FAKE_ENV_SHOW false
ENV JEN_FAKE_SHELL_KEEP false

CMD [ "sh", "execute.sh" ]
