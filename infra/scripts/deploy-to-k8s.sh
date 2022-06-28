#!/bin/bash

cd $(dirname $0)

namespace=druid

for name in node master query; do
    ../druid-$name/build-image.sh
done

for name in metadata zookeeper druid-master druid-query ingress; do
    kubectl --namespace $namespace apply -f ../$name/$name.yaml
done
