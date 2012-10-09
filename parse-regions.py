#!/bin/bash

import json
import os


def handleFile(filename):
  f=open(filename,'r')
  data = f.readline()
  json_data = json.loads(data)
  f.close()
  return json_data


def stat(json_data):
  name=json_data['name']
  Region = json_data['Region']
  num_of_region = len(Region)
  node_hash={}
  for r in Region[:]:
   node=r['location']
   if not node_hash.has_key(node):
      node_hash[node] = 1
   else:
      node_hash[node] += 1

  print '{0:2} {1:3} {2:4}'.format(name,num_of_region,node_hash)
  return 1


status_dir='/home/dhan3/tools/appscale-cluster/'
os.chdir(status_dir)
for files in sorted(os.listdir('.')):
  if files.startswith('bixi') and files.endswith(".json"):
    json_data=handleFile(files)
    stat(json_data)
