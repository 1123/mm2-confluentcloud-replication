#!/bin/bash

kafka-rebalance-cluster \
  --bootstrap-server localhost:9092 \
  --status
