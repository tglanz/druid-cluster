#!/bin/bash

cd $(dirname $0)

namespace=druid

for name in node master query data; do
    ../druid-$name/build-image.sh
done

# TODO: re-add ingress once we know it is not the freezer

for name in metadata zookeeper druid-master druid-query druid-data; do
    kubectl --namespace $namespace apply -f ../$name/$name.yaml
done
