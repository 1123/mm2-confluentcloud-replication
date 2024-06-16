kafka-console-consumer \
  --formatter "org.apache.kafka.connect.mirror.formatters.CheckpointFormatter" \
  --bootstrap-server $BOOTSTRAP_SERVER \
  --from-beginning \
  --topic A.checkpoints.internal \
  --consumer.config cloud.properties
