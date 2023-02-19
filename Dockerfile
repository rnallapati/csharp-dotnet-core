FROM mcr.microsoft.com/dotnet/sdk:7.0

ENV PATH="/root/.dotnet/tools:$PATH"

RUN dotnet tool install --global dotnet-ef
RUN dotnet tool install --global dotnet-aspnet-codegenerator
