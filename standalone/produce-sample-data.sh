while [[ true ]]; do echo "$RANDOM" | \
  kafka-console-producer \
    --topic replicate_me \
    --bootstrap-server localhost:9092; \
  sleep 1; 
done
