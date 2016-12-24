FROM ubuntu:16.04
MAINTAINER CTANG <mchina_tang@qq.com>
ENV REFRESHED_AT 2016-12-09

RUN apt-get -yqq update
RUN apt-get -yqq install curl unzip

ADD https://releases.hashicorp.com/consul/0.7.1/consul_0.7.1_linux_amd64.zip /tmp/consul.zip
RUN cd /usr/sbin && unzip /tmp/consul.zip && chmod +x /usr/sbin/consul && rm /tmp/consul.zip

RUN mkdir -p /webui/
ADD https://releases.hashicorp.com/consul/0.7.1/consul_0.7.1_web_ui.zip /webui/webui.zip
RUN cd /webui && unzip webui.zip && rm webui.zip

ADD consul.json /config/

EXPOSE 53/udp 8300 8301 8301/udp 8302 8302/udp 8400 8500

VOLUME ["/data"]

ENTRYPOINT [ "/usr/sbin/consul", "agent", "-config-dir=/config"]
CMD []
