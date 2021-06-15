FROM debian:buster-slim

RUN apt-get -y update && \
    apt-get -y install nginx-full python3-pip curl && \
    pip3 install awscli && \
    mkdir -p /cockroach-exports && \
    chmod 777 /cockroach-exports

COPY nginx.conf /etc/nginx/nginx.conf
