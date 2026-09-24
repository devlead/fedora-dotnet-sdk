FROM fedora:44 AS sdk

RUN dnf install -y --refresh \
    dotnet-sdk-10.0 \
    git \
    make \
    && dnf clean all \
    && rm -rf /var/cache/dnf

WORKDIR /src

ENV DOTNET_CLI_TELEMETRY_OPTOUT=1
ENV DOTNET_SKIP_FIRST_TIME_EXPERIENCE=1

CMD ["dotnet", "--version"]
