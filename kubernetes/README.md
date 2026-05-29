# Kubernetes Deployment - Retail Store Application

## Overview

This directory contains Kubernetes and Helm deployment artifacts for the Retail Store Sample Application deployed on Amazon EKS.

## Environment

* Kubernetes Cluster: Amazon EKS
* Namespace: retail-app
* Deployment Method: Helm
* Database: Amazon RDS PostgreSQL
* Cache Layer: Redis

## Services Deployed

* UI
* Checkout
* Catalog
* Carts
* Orders
* Redis

## Deployment Validation

The following validations were successfully completed:

* All pods running successfully
* Redis service connectivity verified
* Orders service connected to Amazon RDS
* Application accessible through Kubernetes service
* Successful checkout workflow validation

## Directory Structure

* deployment-guide.md – Deployment steps
* retail-store-values.yaml – Customized Helm values
* namespace.yaml – Namespace definition
* screenshots/ – Deployment evidence
