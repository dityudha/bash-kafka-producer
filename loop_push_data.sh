#!/bin/bash
#looping 4ever
#for (( ; ; ))
#Looping just 10 data
for i in {1..100}
do
  cat /home/kafkaadmin/push_data/sample_data.txt | /opt/confluent-5.5.1/bin/kafka-console-producer --broker-list 10.243.215.122:9092 --topic "abc-ssl-dev" --property parse.key=true --property key.separator=- linger.ms=1
done
