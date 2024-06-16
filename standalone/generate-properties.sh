#!/bin/bash

cat connect-mirror-maker.properties.template | \
  envsubst > connect-mirror-maker.properties

cat cloud.properties.template | \
  envsubst > cloud.properties
