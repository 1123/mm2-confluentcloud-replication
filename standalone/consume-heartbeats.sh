kafka-console-consumer \
  --formatter "org.apache.kafka.connect.mirror.formatters.HeartbeatFormatter" \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --from-beginning \
  --topic A.heartbeats \
  --consumer.config cloud.properties
