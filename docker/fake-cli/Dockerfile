FROM microsoft/dotnet

RUN dotnet tool install fake-cli --global --version 5.3.1
ENV PATH $PATH:/root/.dotnet/tools


WORKDIR /fake
COPY readme.md /fake/
COPY execute.sh /fake/
RUN chmod +x /fake/execute.sh


ENV FAKE_README_PATH /fake/readme.md
ENV FAKE_README_SHOW true
ENV FAKE_KEEP_SHELL false

CMD [ "sh", "execute.sh" ]
