FROM nginx:latest

ARG DEBIAN_FRONTEND=noninteractive

# Environments for system
ENV LANG 'C.UTF-8'
ENV LC_ALL 'C.UTF-8'

WORKDIR /etc/nginx

RUN mv nginx.conf nginx.conf.orig && \
    mkdir -p /data/nginx/cache && \
    mkdir -p /data/nginx/log

COPY nginx.conf nginx.conf

CMD ["nginx", "-g", "daemon off;"]