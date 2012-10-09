#!/bin/bash

echo "***********start zookeeper***************"

/usr/local/zookeeper/bin/zkServer.sh start

sleep 20

echo "*******start Hadoop******************"

$HADOOP_HOME/bin/start-dfs.sh

sleep 120

echo "*******start HBase********************"

$HBASE_HOME/bin/start-hbase.sh
