cat mm2.json.template | \
  sed "s/BOOTSTRAP_SERVER/$BOOTSTRAP_SERVER/" | \
  sed "s/API_KEY/$API_KEY/" | \
  sed "s/API_SECRET/$API_SECRET/" > mm2.json
