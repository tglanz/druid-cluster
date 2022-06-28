#!/bin/bash

cd $(dirname $0)

namespace=druid

../druid-node/build-image.sh
../druid-master/build-image.sh

kubectl create namespace $namespace

kubectl --namespace $namespace apply -f ../metadata/metadata.yaml
kubectl --namespace $namespace apply -f ../zookeeper/zookeeper.yaml
kubectl --namespace $namespace apply -f ../druid-master/druid-master.yaml
