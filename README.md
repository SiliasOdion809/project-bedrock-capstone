# Project Bedrock Capstone

## Overview

Project Bedrock Capstone demonstrates the deployment of a cloud-native retail application on AWS using Infrastructure as Code, Kubernetes, GitHub Actions CI/CD, AWS Lambda, Amazon Bedrock, and CloudWatch monitoring.

The solution provisions and manages AWS infrastructure using Terraform, deploys containerized microservices to Amazon EKS, integrates Amazon Bedrock through an event-driven Lambda workflow, and automates infrastructure changes through GitHub Actions.

---

# Architecture Components

### Infrastructure

* Amazon VPC
* Amazon EKS
* Amazon RDS (PostgreSQL)
* Amazon DynamoDB
* Amazon S3
* Amazon ECR
* AWS Lambda
* AWS IAM
* Amazon CloudWatch
* Amazon Bedrock

### DevOps Tooling

* Terraform
* GitHub Actions
* Docker
* Kubernetes
* Helm

---

# Repository Structure

```text
project-bedrock-capstone/
│
├── .github/
│   └── workflows/
│       ├── terraform-plan.yml
│       └── terraform-apply.yml
│
├── Evidence/
│   ├── CICD/
│   │   ├── terraform-plan-success.png
│   │   └── terraform-apply-success.png
│   │
│   ├── Kubernetes/
│   │   └── screenshot/
│   │       ├── alb-ingress.png
│   │       ├── pods-running.png
│   │       ├── services-running.png
│   │       ├── eks-cluster.png
│   │       ├── dynamodb-table.png
│   │       ├── redis-validation.png
│   │       ├── redis-service-validation.png
│   │       └── rds-postgres.png
│   │
│   ├── Retail-app/
│   │   ├── Application-homepage.png
│   │   ├── Checkout-1.png
│   │   ├── Checkout-2.png
│   │   ├── Checkout-3.png
│   │   ├── Order-confirmation.png
│   │   └── Products-added-to-cart.png
│   │
│   ├── Lambda/
│   │   └── screenshots/
│   │       ├── screenshot-1.png
│   │       ├── screenshot-2.png
│   │       ├── screenshot-3.png
│   │       └── screenshot-4.png
│   │
│   └── rbac/
│       └── screenshot/
│           ├── container-insights.png
│           ├── observability-logs.png
│           ├── describe-log-streams.png
│           └── clusters-performance-monitoring.png
│
├── kubernetes/
│   ├── namespace.yaml
│   ├── retail-store-values.yaml
│   ├── secrets-template.yaml
│   ├── trust-policy.json
│   ├── README.md
│   ├── deployment-guide.md
│   │
│   └── rbac/
│       ├── readonly-role.yaml
│       ├── readonly-binding.yaml
│       └── cloudwatch-trust-policy.json
│
├── lambda/
│   ├── trust-policy.json
│   │
│   └── src/
│       ├── lambda_function.py
│       ├── function.zip
│       ├── notification.json
│       └── test-image.jpg
│
├── retail-store-sample-app/
│   └── (AWS Retail Store Sample Application)
│
├── terraform/
│   ├── backend.tf
│   ├── provider.tf
│   ├── versions.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── main.tf
│   ├── grading.json
│   │
│   ├── networking/
│   ├── eks/
│   ├── rds/
│   ├── dynamodb/
│   ├── s3/
│   ├── lambda/
│   ├── iam/
│   ├── monitoring/
│   └── ecr/
│
└── README.md
```

---

# Terraform Modules

## networking

Creates:

* VPC
* Public Subnets
* Private Subnets
* Internet Gateway
* NAT Gateway
* Route Tables

## eks

Creates:

* Amazon EKS Cluster
* Managed Node Group
* Security Groups
* IAM Roles

## rds

Creates:

* PostgreSQL Database
* Database Subnet Group
* Database Security Group

## dynamodb

Creates:

* DynamoDB Tables used by application services

## s3

Creates:

* Asset Storage Bucket
* Bucket Policies
* Event Notifications

## lambda

Creates:

* Bedrock Asset Processor Function
* Lambda Permissions
* Lambda Triggers

## iam

Creates:

* Lambda Execution Roles
* Read-Only IAM Users
* Policy Attachments

## monitoring

Creates:

* CloudWatch Log Groups
* Log Retention Policies

## ecr

Creates:

* Amazon ECR Repositories
* Container Image Storage

---

# CI/CD Workflows

## Terraform Plan

Triggered on Pull Requests.

Performs:

* Terraform Init
* Terraform Validate
* Terraform Plan
* Upload Plan Artifact

## Terraform Apply

Triggered on Merge to Main.

Performs:

* Terraform Init
* Terraform Validate
* Terraform Apply

---

# Application Deployment

The AWS Retail Store Sample Application is deployed to Amazon EKS using Helm.

Microservices include:

* UI
* Catalog
* Carts
* Checkout
* Orders

Supporting services include:

* PostgreSQL
* DynamoDB
* Redis
* RabbitMQ

---

# Amazon Bedrock Integration

The project implements an event-driven AI workflow:

1. Asset uploaded to Amazon S3.
2. S3 triggers AWS Lambda.
3. Lambda invokes Amazon Bedrock.
4. Results are logged to CloudWatch.

---

# Evidence Collection

The repository includes screenshots demonstrating:

* Successful Terraform Plan
* Successful Terraform Apply
* EKS Cluster Deployment
* Running Pods and Services
* DynamoDB Validation
* RDS Validation
* Redis Validation
* Application Checkout Workflow
* Lambda Execution
* CloudWatch Observability
* RBAC Verification

---

# Author

Silias Odion

Cloud / DevOps Engineering Project
AltSchool Africa

---

# Capstone Objective

Provision, deploy, automate, secure, monitor, and operate a production-style cloud-native retail application on AWS using Infrastructure as Code, Kubernetes, CI/CD pipelines, Amazon Bedrock, and AWS serverless services.
