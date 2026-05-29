# Deployment Guide

## Configure kubectl

aws eks update-kubeconfig  
--region us-east-1  
--name project-bedrock-cluster

## Create Namespace

kubectl apply -f namespace.yaml

## Navigate to Helm Chart

cd retail-store-sample-app/src/app/chart

## Build Dependencies

helm dependency build

## Deploy Application

helm install retail-store . \
  -n retail-app \
  --create-namespace

## Verify Deployment

kubectl get pods -n retail-app

kubectl get svc -n retail-app

kubectl get deployments -n retail-app

## View Logs

kubectl logs deployment/checkout -n retail-app

kubectl logs deployment/orders -n retail-app

## Troubleshooting

### Redis Connectivity

* Verified Redis pod status
* Verified Redis service
* Verified Redis endpoint
* Verified DNS resolution
* Verified Redis accepts connections using redis-cli ping

### Database Connectivity

* Verified Orders service connection to Amazon RDS PostgreSQL
* Validated successful application startup
