FROM java:8
MAINTAINER Simon Heinzle <simon@gimalon.com>

# download and install kibana
ENV KIBANA_VERSION 4.0.2-linux-x64
#ENV KIBANA_VERSION 3.1.2-linux-x64
RUN curl -s https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}.tar.gz | tar zx -C /opt


# copy our own logstash config
ADD ./kibana.yml /opt/kibana-${KIBANA_VERSION}/config/kibana.yml
ADD ./run.sh /run.sh

# expose kibana
EXPOSE 5601

ENTRYPOINT /run.sh
