#!/bin/bash

confluent kafka topic list | \
  grep false | \
  sed 's/^  //; s/ .*//' | \
  while read line; do 
    confluent kafka topic delete --force "$line"; i
  done
