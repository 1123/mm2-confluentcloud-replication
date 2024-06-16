kafka-configs \
  --bootstrap-server localhost:9092 \
  --entity-type brokers \
  --entity-default \
  --alter --add-config confluent.balancer.enable=false

