#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY ["KanbanApp.Api/KanbanApp.Api.csproj", "KanbanApp.Api/"]
COPY ["KanbanApp.Services/KanbanApp.Services.csproj", "KanbanApp.Services/"]
COPY ["KanbanApp.Data/KanbanApp.Data.csproj", "KanbanApp.Data/"]
COPY ["KanbanApp.Core/KanbanApp.Core.csproj", "KanbanApp.Core/"]
COPY ["KanbanApp.Domain/KanbanApp.Domain.csproj", "KanbanApp.Domain/"]
COPY ["KanbanApp.Domain.Shared/KanbanApp.Domain.Shared.csproj", "KanbanApp.Domain.Shared/"]
RUN dotnet restore "KanbanApp.Api/KanbanApp.Api.csproj"
COPY . .
WORKDIR "/src/KanbanApp.Api"
RUN dotnet build "KanbanApp.Api.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "KanbanApp.Api.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "KanbanApp.Api.dll"]