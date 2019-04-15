#!/usr/bin/env bash

kubectl create configmap prometheus-example-cm --from-file config.yaml
kubectl create -f prometheus.yaml
