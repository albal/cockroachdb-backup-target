FROM debian:buster-slim

RUN apt-get -y update && \
    apt-get -y install nginx-full python3-pip curl && \
    pip3 install awscli && \
    mkdir -p /cockroach-exports && \
    chmod 777 /cockroach-exports

EXPOSE 20150

COPY nginx.conf /etc/nginx/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
