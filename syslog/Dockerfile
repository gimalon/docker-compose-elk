# inspired by http://jpetazzo.github.io/2014/08/24/syslog-docker/

FROM ubuntu:14.04
RUN apt-get update -q
RUN apt-get install rsyslog
RUN mkdir /var/log/haproxy

ADD ./rsyslog.conf /etc/rsyslog.conf
ADD ./rsyslog-haproxy.conf /etc/rsyslog.d/haproxy.conf

CMD rsyslogd -n -f /etc/rsyslog.conf

VOLUME /dev
VOLUME /var/log

EXPOSE 514