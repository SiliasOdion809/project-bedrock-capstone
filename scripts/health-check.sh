#!/bin/bash

kubectl get pods -A

aws eks describe-cluster \
--name project-bedrock-cluster \
--region us-east-1