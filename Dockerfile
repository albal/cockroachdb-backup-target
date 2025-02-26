FROM debian:buster-slim

RUN apt-get -y update && \
    apt-get -y install nginx-full python3-pip curl procps && \
    pip3 install awscli && \
    mkdir -p /cockroach-exports && \
    chmod 777 /cockroach-exports

EXPOSE 20150

VOLUME /cockroach-exports

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
