FROM sshd14:dockerfile
MAINTAINER CTANG "mchina_tang@qq.com"
ENV REFRESHED_AT 2016-11-13
RUN apt-get update
RUN apt-get install -y -q nginx
RUN mkdir -p /var/www/html
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
