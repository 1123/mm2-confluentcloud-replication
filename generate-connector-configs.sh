for CONNECTOR in mm2 checkpoint heartbeat; do
  cat $CONNECTOR.json.template | \
    sed "s/BOOTSTRAP_SERVER/$BOOTSTRAP_SERVER/" | \
    sed "s/API_KEY/$API_KEY/" | \
    sed "s/API_SECRET/$API_SECRET/" > $CONNECTOR.json
done
