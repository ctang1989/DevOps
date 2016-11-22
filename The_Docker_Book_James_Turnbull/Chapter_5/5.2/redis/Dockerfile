FROM ubuntu:16.04
MAINTAINER CTANG "mchina_tang@qq.com"
ENV REFRESHED_AT 2016-11-22

RUN apt-get -yqq update
RUN apt-get -yqq install redis-server redis-tools

EXPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]
CMD []
