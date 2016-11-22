FROM ubuntu:16.04
MAINTAINER CTANG mchina_tang@qq.com
ENV REFRESHED_AT 2016-11-22

RUN apt-get -yqq update
RUN apt-get -yqq install ruby ruby-dev build-essential redis-tools
RUN gem install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]
