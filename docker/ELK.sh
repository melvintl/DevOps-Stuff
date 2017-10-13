#!/bin/bash

docker run -d -p 9200:9200 -p 5044:5044 -p 5000:5000 -it -h elasticsearch --name elasticsearch elasticsearch

docker run -d  -p 5601:5601 -h kibana --name kibana --link elasticsearch:elasticsearch kibana

docker run -p 9500:9500  -h logstash --name logstash --link elasticsearch:elasticsearch -it --rm -v "$PWD":/config-dir logstash -f /config-dir/logstash.conf
