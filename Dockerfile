#设置依赖的镜像 
#从平台--=linux/arm64（mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim 作为基地 
#ARM版本专用镜像 
从mcr.microsoft.com/dotnet/core/aspnet:3.1.23-buster-slim-arm64v8 作为基地 
#从mcr.microsoft.com/dotnet/core/aspnet:3.1.22-bionic-arm64v8 作为基地 
#设置镜像创建者 
维护者hanhongyong 
#设置工作目录 
WORKDIR/应用程序 
#copy文件到app目录下 
复制Microsoft365_E5_Renew_X/. ./ 

#设置环境变量 
ENV TZ亚洲/上海 

从mcr.microsoft.com/dotnet/core/sdk:3.1.417-buster-arm64v8 

WORKDIR/应用程序 
复制--从=基薪/应用程序。 
#预执行命令，容器创建完成后执行的命令，使得程序能够执行 

#运行dotnet开发证书https--清洁 
#运行dotnet开发证书https 
入口点["dotnet","Microsoft365_E5_Renew_X.dll"] 
