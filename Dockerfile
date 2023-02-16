FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

# Set the working directory
WORKDIR /app

# Copy the .NET Core application to the image
COPY app .

EXPOSE 5000
