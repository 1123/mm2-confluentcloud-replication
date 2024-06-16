#!/bin/bash

set -u -e

BOOTSTRAP_SERVER=localhost:9092

kafka-topics \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --list | \
    while read line; do 
      echo "Deleting topic $line"
      kafka-topics \
        --bootstrap-server $BOOTSTRAP_SERVER \
        --delete \
        --topic $line; \
    done
