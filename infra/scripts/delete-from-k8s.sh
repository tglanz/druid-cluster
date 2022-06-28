#!/bin/bash

cd $(dirname $0)

namespace=druid

for name in metadata zookeeper druid-master druid-query ingress; do
    kubectl --namespace $namespace delete -f ../$name/$name.yaml
done
