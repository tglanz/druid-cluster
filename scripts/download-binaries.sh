#!/bin/bash

script_dir=$(realpath $(dirname $0))
root_dir=$(realpath $script_dir/..)

release_url=https://dlcdn.apache.org/druid/0.23.0/apache-druid-0.23.0-bin.tar.gz
destination_path=$root_dir/binaries/druid.tar.gz

destination_dir=$(dirname $destination_path)
mkdir -p $destination_dir 

temp_destination_dir=$destination_dir/$(mktemp XXXXX)
mkdir -p $temp_destination_dir


wget $release_url -O $destination_path
tar -xvzf $destination_path

tar -C $temp_destination_dir -xvzf $destination_path
mv $temp_destination_dir/*/** $destination_dir

rm -rf $destination_path
rm -rf $temp_destination_dir
