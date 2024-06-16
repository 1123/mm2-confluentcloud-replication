#!/bin/bash

set -u -e

export KAFKA_LOG4J_OPTS='-Dlog4j.configuration=file:log4j.properties'
export LOGFILE=herder.log

echo "LOG4J configuration: $KAFKA_LOG4J_OPTS"
echo "Logging to $LOGFILE"
connect-mirror-maker connect-mirror-maker.properties > $LOGFILE 2>&1 &
