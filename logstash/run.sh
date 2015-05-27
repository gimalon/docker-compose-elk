#!/bin/bash
SERVER="elasticsearch:9200"

# wait for elastic search to boot up
while true; do
  echo "-- Curling $SERVER to see if it is up already"
  curl -s $SERVER
  if [ $? -eq 0 ]; then
    echo "-- Got curl connection! Done"
    break
  fi
  # wait 5 more seconds
  echo "-- not yet, waiting 5s"
  sleep 5
done

# set -e
exec /opt/logstash-${LOGSTASH_VERSION}/bin/logstash -f /opt/logstash-${LOGSTASH_VERSION}/logstash.conf
