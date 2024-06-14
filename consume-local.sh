# the checkpoint connector ignores consumer groups starting with console-consumer. Therefore we are using dummy-consumer-group.
kafka-console-consumer \
  --bootstrap-server localhost:9092 \
  --topic replicate_me \
  --group dummy-consumer-group
