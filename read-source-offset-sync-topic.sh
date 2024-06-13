kafka-console-consumer \
  --bootstrap-server localhost:9092 \
  --topic mm2-offset-syncs.target.internal \
  --formatter org.apache.kafka.connect.mirror.formatters.OffsetSyncFormatter \
  --from-beginning
