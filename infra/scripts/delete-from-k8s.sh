#!/bin/bash

cd $(dirname $0)

namespace=druid

kubectl --namespace $namespace delete -f ../metadata/metadata.yaml
kubectl --namespace $namespace delete -f ../zookeeper/zookeeper.yaml
kubectl --namespace $namespace delete -f ../druid-master/druid-master.yaml

kubectl delete namespace $namespace
