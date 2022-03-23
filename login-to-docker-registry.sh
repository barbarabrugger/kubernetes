#!/usr/bin/env bash

set -e

kubectl create \
 --namespace website \
 secret docker-registry \
 docker-hub \
 --docker-server=...\
 --docker-username=...\
 --docker-password=...\
 --docker-email=...\