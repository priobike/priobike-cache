FROM bikenow.vkw.tu-dresden.de/priobike/priobike-nginx:v1.0

RUN mkdir /data
RUN mkdir /data/nginx
RUN mkdir /data/nginx/cache

COPY ./templates/default.conf.template /etc/nginx/templates/default.conf.template
