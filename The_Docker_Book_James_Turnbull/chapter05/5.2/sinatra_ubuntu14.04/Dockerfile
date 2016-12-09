FROM sshd14:dockerfile
MAINTAINER CTANG mchina_tang@qq.com
ENV REFRESHED_AT 2016-11-13

RUN apt-get update
RUN apt-get install -y ruby2.0 ruby2.0-dev build-essential redis-tools
RUN ln -sf /usr/bin/ruby2.0 /usr/bin/ruby
RUN ln -sf /usr/bin/gem2.0 /usr/bin/gem
RUN ln -sf /usr/bin/erb2.0 /usr/bin/erb
RUN ln -sf /usr/bin/irb2.0 /usr/bin/irb
RUN ln -sf /usr/bin/rake2.0 /usr/bin/rake
RUN ln -sf /usr/bin/rdoc2.0 /usr/bin/rdoc
RUN ln -sf /usr/bin/testrb2.0 /usr/bin/testrb
RUN gem2.0 install --no-rdoc --no-ri sinatra json redis

RUN mkdir -p /opt/webapp

EXPOSE 4567

CMD ["/opt/webapp/bin/webapp"]
