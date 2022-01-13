FROM ubuntu:18.04

MAINTAINER Sreenivas Reddy

RUN apt-get update \
    && apt-get install -y nginx \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
WORKDIR /opt/
COPY index.html /var/www/html/index.nginx-debian.html
# ADD ep.sh /opt/ep.sh
# RUN chmod +x /opt/ep.sh

EXPOSE 80

ENTRYPOINT ["nginx"]
