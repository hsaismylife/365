#设置依赖的镜像
#FROM --platform=linux/arm64 mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim AS base
#ARM版本专用镜像
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.23-buster-slim-arm64v8 AS base
#FROM mcr.microsoft.com/dotnet/core/aspnet:3.1.22-bionic-arm64v8 AS base
#设置镜像创建者
MAINTAINER hanhongyong
#设置工作目录
WORKDIR /app
#copy文件到app目录下
COPY Microsoft365_E5_Renew_X/. ./

#设置环境变量
ENV TZ Asia/Shanghai

FROM  mcr.microsoft.com/dotnet/core/sdk:3.1.417-buster-arm64v8

WORKDIR /app
COPY --from=base /app .
#预执行命令，容器创建完成后执行的命令，使得程序能够执行

#RUN dotnet dev-certs https --clean
#RUN dotnet dev-certs https
ENTRYPOINT ["dotnet", "Microsoft365_E5_Renew_X.dll"]
