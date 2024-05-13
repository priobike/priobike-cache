FROM nginx:1.24

RUN mkdir /data
RUN mkdir /data/nginx
RUN mkdir /data/nginx/cache

COPY ./templates/default.conf.template /etc/nginx/conf.d/default.conf.template
COPY ./nginx.conf /etc/nginx/nginx.conf
