#!/usr/bin/env bash

export AWS_PROFILE=tao

aws eks update-kubeconfig --name terraform-eks-demo

terraform output config_map_aws_auth > config_map_aws_auth.yaml
kubectl apply -f config_map_aws_auth.yaml
