#!/bin/bash

echo "check hadoop..."

hadoop dfsadmin -report | grep Name | wc -l

echo "check hbase...."

$HBASE_HOME/bin/hbase shell
