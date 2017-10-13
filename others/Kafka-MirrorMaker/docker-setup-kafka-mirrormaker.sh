#!/bin/bash
docker run -d -it --name zookeeper-source \
        -h zookeeper-source \
        -p 2181:2181 \
        confluent/zookeeper

docker run -d -it --name zookeeper-dest \
        -h zookeeper-dest \
        -p 2182:2181 \
        confluent/zookeeper

docker run -d -it --name kafka-source \
        -h kafka-source \
        --env KAFKA_ADVERTISED_HOST_NAME=kafka-source \
        -p 9092:9092  -p 9093:9033 \
        --link zookeeper-source:zookeeper \
        confluent/kafka:0.10.0.0-cp1

docker run -d -it --name kafka-dest \
        -h kafka-dest \
        --env KAFKA_ADVERTISED_HOST_NAME=kafka-dest \
        -p 9094:9092  -p 9095:9033 \
        --link zookeeper-dest:zookeeper \
        --link zookeeper-source:zookeeper-source \
        --link kafka-source:kafka-source \
        -v $PWD:/opt/software \
        confluent/kafka:0.10.0.0-cp1