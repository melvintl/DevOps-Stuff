#!/bin/bash
kafka-topics --list --zookeeper zookeeper-source:2181
kafka-topics --list --zookeeper zookeeper-dest:2181
kafka-topics --list --zookeeper zookeeper-source:2181

kafka-topics --create --zookeeper zookeeper-source:2181  --replication-factor 1 --partitions 5 --topic Test1
kafka-console-producer --broker-list localhost:9092 --topic Test1

kafka-mirror-maker --consumer.config sourceClusterConsumer.properties  --producer.config targetClusterProducer.properties --whitelist=".*"

kafka-console-consumer --zookeeper zookeeper-dest:2181 --topic Test1 --from-beginning