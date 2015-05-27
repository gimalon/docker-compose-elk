FROM java:8
MAINTAINER Simon Heinzle <simon@gimalon.com>

# download and install logstash
ENV LOGSTASH_VERSION 1.4.2
RUN curl -s https://download.elasticsearch.org/logstash/logstash/logstash-${LOGSTASH_VERSION}.tar.gz | tar zx -C /opt

# Install contrib plugins
# RUN /opt/logstash-${LOGSTASH_VERSION}/bin/plugin install contrib

# copy our own logstash config
ADD ./logstash.conf /opt/logstash-${LOGSTASH_VERSION}/logstash.conf
ADD ./run.sh /run.sh

# expose TCP and UDP
EXPOSE 5228
EXPOSE 5229

# run
ENTRYPOINT /run.sh
