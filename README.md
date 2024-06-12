# Mirror Maker Replication from local Confluent Platform to Confleunt Cloud

This project is a demo for setting up replication from a single node on premise Confluent Platform installation to Confluent Cloud with MirrorMaker2. 

## Prerequisites:

* Internet Connectivity to download Confluent Platform
* JRE 11 or 17
* A Confluent Cloud Account and a basic cluster
* Linux environment

### Running the Demo

* Download and unzip Confluent Platform 7.6.1 or later (see [The docs](https://docs.confluent.io/platform/current/installation/installing_cp/zip-tar.html))
* Set `CONFLUENT_HOME` and `PATH` variable as described [here](https://docs.confluent.io/platform/current/installation/installing_cp/zip-tar.html)
* In case Confluent Platform has been running in the past, destroy that instance to start from scratch: `confluent local destroy`
* Start up Kafka: `confluent local services kafka start`. This will also start Zookeeper as a dependency. 
* Start a single-node Connect Cluster: `./start_connect.sh` and wait until the connect worker is fully runnning. 
* In a separate terminal window list all running connectors; there should be none: `./get_connectors.sh`
* Create a basic Cluster in Confluent Cloud 
* For this basic cluster create an Api Key with global access. 
* export your Confluent Cloud Api Key: `export API_KEY=...`
* export your Confluent Cloud Api Secret: `export API_SECRET=...`
* generate the connector configuration from the connector configuration template file: `generate_mm2_json.sh`. Inspect the generated file `mm2.json`.
* deploy MirrorMaker2 on the connect cluster: `./deploy_mm2.sh`
* Again, list the connectors: `./get_connectors.sh`. You should now see a single connector named mm2. 
* produce some sample data to the local source Kafka cluster: `./produce-sample-data.sh`
* consume the messages from the local cluster to see what is being generated: `./consume-local.sh`
* create a topic named `source.replicate_me` in your Confluent Cloud basic cluster either via the cli or via the Confluent Cloud Web Interface. 
* confirm that the data is being replicated to Confluent Cloud by inspecting the topic in the Confluent Cloud UI. 

