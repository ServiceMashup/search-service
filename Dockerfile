FROM microsoft/aspnet:1.0.0-beta4

ADD . /app

WORKDIR /app

RUN ["dnu", "restore"]

ENV SERVICE_PORT=5006
ENV DISCOVERY_SERVICE_URLS=http://46.101.138.192:8500;http://46.101.191.124:8500

ENTRYPOINT sleep 99999999999 | dnx . Microsoft.AspNet.Hosting --server Kestrel --server.urls http://localhost:$SERVICE_PORT
