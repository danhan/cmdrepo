#!/bin/bash

curl -H "Accept: application/json" http://10.0.0.11:9110/status/cluster > ./hbase-cluster/cluster.json

for i in $tables; do
  curl -H "Accept: application/json" "http://10.0.0.11:9110/$i/regions" > "./hbase-cluster/$i.json"
done;
