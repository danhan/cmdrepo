#!/bin/bash

echo "***********stop hbase***************"

$HBASE_HOME/bin/stop-hbase.sh

sleep 5

echo "*******stop Hadoop******************"

$HADOOP_HOME/bin/stop-all.sh

sleep 5

echo "*******stop zookeeper********************"

/usr/local/zookeeper/bin/zkServer.sh stop






