#!/bin/bash

cd $(dirname $0)
docker build --tag tglanz/druid-query .
