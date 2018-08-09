FROM microsoft/dotnet

RUN dotnet tool install fake-cli --global --version 5.3.1
ENV PATH $PATH:/root/.dotnet/tools

WORKDIR /fake

COPY execute.sh /fake/
RUN chmod +x /fake/execute.sh

COPY readme.md /fake/
COPY build.fsx /fake/
RUN fake run build.fsx

ENV JEN_FAKE_README_PATH /fake/readme.md
ENV JEN_FAKE_README_SHOW true
ENV JEN_FAKE_KEEP_SHELL false

CMD [ "sh", "execute.sh" ]
