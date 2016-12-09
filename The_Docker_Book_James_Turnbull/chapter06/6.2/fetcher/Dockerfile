FROM ubuntu:16.04
MAINTAINER CTANG <mchina_tang@qq.com>
ENV REFRESHED_AT 2016-12-03

RUN apt-get -yqq update
RUN apt-get -yqq install wget

VOLUME [ "/var/lib/tomcat7/webapps/" ]
WORKDIR /var/lib/tomcat7/webapps/

ENTRYPOINT [ "wget" ]
CMD [ "-h" ]
