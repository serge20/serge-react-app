FROM ubuntu:16.04

MAINTAINER Serge Basile

RUN apt-get update && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf


CMD ["nginx"]