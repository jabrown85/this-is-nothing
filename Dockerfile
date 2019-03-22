FROM microsoft/aspnetcore
WORKDIR /app
CMD echo "hi"
COPY . .
ADD heroku-exec.sh /app/.profile.d
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
CMD ASPNETCORE_URLS=http://*:$PORT dotnet dotnet.dll