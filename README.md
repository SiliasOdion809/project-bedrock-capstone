# 🚀 Project Bedrock
### Production-Grade AWS Infrastructure with Terraform, Amazon EKS & GitHub Actions

![AWS](https://img.shields.io/badge/AWS-Cloud-orange?logo=amazonaws)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4?logo=terraform)
![Kubernetes](https://img.shields.io/badge/Kubernetes-EKS-326CE5?logo=kubernetes)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-2088FF?logo=github-actions)
![Docker](https://img.shields.io/badge/Docker-Containers-2496ED?logo=docker)

---

## 📖 Overview

Project Bedrock is a **production-grade cloud infrastructure project** built on Amazon Web Services (AWS) to demonstrate modern Cloud Engineering and DevOps best practices.

The project provisions a secure, scalable, and highly available Kubernetes platform using **Terraform** and deploys a containerized retail microservices application onto **Amazon Elastic Kubernetes Service (EKS)** through a fully automated **GitHub Actions CI/CD pipeline**.

This project was developed as my Cloud Engineering Capstone and represents a real-world implementation of Infrastructure as Code, container orchestration, cloud networking, automation, observability, and production deployment practices.

---

# 🎯 Project Objectives

- Build production-ready AWS infrastructure
- Implement Infrastructure as Code using Terraform
- Deploy containerized microservices on Amazon EKS
- Automate infrastructure provisioning
- Automate application deployment
- Secure cloud resources following AWS best practices
- Implement monitoring and observability
- Demonstrate scalable cloud-native architecture

---

# 🏗 Architecture

Project Bedrock consists of a production-ready AWS environment including:

- Amazon VPC
- Public & Private Subnets
- Internet Gateway
- NAT Gateway
- Bastion Host
- Amazon EKS Cluster
- Managed Node Groups
- Application Load Balancer
- Amazon RDS (MySQL)
- Amazon RDS (PostgreSQL)
- Amazon S3
- AWS Lambda
- Amazon CloudWatch
- AWS IAM
- Security Groups
- GitHub Actions CI/CD

---

# ☁ AWS Services Used

| Service | Purpose |
|----------|----------|
| Amazon EKS | Kubernetes Cluster |
| Amazon EC2 | Bastion Host & Worker Nodes |
| Amazon VPC | Networking |
| Amazon ALB | Application Load Balancer |
| Amazon RDS | MySQL & PostgreSQL Databases |
| Amazon S3 | Assets & Terraform Remote State |
| AWS Lambda | Asset Processing |
| CloudWatch | Monitoring & Logs |
| IAM | Identity & Access Management |
| ECR | Container Image Registry |

---

# 🛠 Technology Stack

## Infrastructure

- Terraform
- AWS CLI

## Container Platform

- Kubernetes
- Amazon EKS
- Docker
- Helm
- Helmfile

## CI/CD

- GitHub Actions

## Databases

- MySQL
- PostgreSQL
- Redis

## Monitoring

- Amazon CloudWatch

---

# ⚙ Infrastructure Provisioning

All AWS infrastructure is provisioned using Terraform.

Infrastructure includes:

- VPC
- Networking
- EKS Cluster
- Node Groups
- IAM Roles
- Security Groups
- RDS
- S3
- Lambda
- Monitoring

```
terraform init

terraform plan

terraform apply
```

---

# 🚀 CI/CD Pipeline

Deployment is fully automated using GitHub Actions.

Pipeline stages:

```
Code Commit
      │
      ▼
GitHub Actions
      │
      ▼
Terraform Plan
      │
      ▼
Terraform Apply
      │
      ▼
Infrastructure Validation
      │
      ▼
Database Provisioning
      │
      ▼
Deploy to Amazon EKS
      │
      ▼
Health Checks
      │
      ▼
Application Ready
```

The pipeline automatically:

- provisions infrastructure
- creates databases
- configures Kubernetes
- deploys Helm releases
- verifies application health

---

# 📦 Application

The deployed application is a cloud-native retail microservices platform running on Amazon EKS.

Services include:

- UI
- Catalog
- Cart
- Checkout
- Orders

The application demonstrates:

- container orchestration
- service communication
- database integration
- load balancing
- autoscaling

---

# 🔒 Security

Security best practices implemented include:

- Private Subnets
- IAM Least Privilege
- IAM Roles for Service Accounts (IRSA)
- OIDC Authentication
- Security Groups
- Secrets Management
- Encrypted communication

---

# 📊 Monitoring

Monitoring includes:

- CloudWatch Logs
- CloudWatch Metrics
- Dashboards
- Kubernetes Logs
- EKS Monitoring

---

# 📈 Results

Project outcomes include:

- 99.9% High Availability
- Automated Infrastructure Provisioning
- Fully Automated CI/CD
- Production-Ready AWS Architecture
- Secure Cloud Infrastructure
- Scalable Kubernetes Platform
- Infrastructure as Code
- Cloud-Native Deployment

---

# 📂 Repository Structure

```
project-bedrock/

├── terraform/
│   ├── modules/
│   ├── environments/
│   ├── networking/
│   ├── eks/
│   ├── iam/
│   ├── monitoring/
│   ├── lambda/
│   ├── s3/
│   └── database/
│
├── retail-store-sample-app/
│
├── helmfile.yaml
│
├── .github/
│   └── workflows/
│       ├── terraform-plan.yml
│       ├── terraform-apply.yml
│       └── deploy-retail-store.yml
│
├── scripts/
│
└── README.md
```

---

# 📸 Project Walkthrough

The project includes:

- Architecture Diagram
- Technology Stack
- CI/CD Pipeline
- GitHub Actions Workflow
- Live Application
- Deployment Results

---

# 📚 Key Learnings

This project strengthened my knowledge of:

- AWS Architecture
- Kubernetes
- Terraform
- Infrastructure as Code
- GitHub Actions
- Amazon EKS
- Cloud Networking
- IAM
- Production Deployment
- Cloud Security
- CI/CD Automation
- Cloud Monitoring

---

# 🚀 Future Improvements

- Blue/Green Deployments
- Canary Releases
- ArgoCD GitOps
- AWS WAF Integration
- Multi-Region Deployment
- Disaster Recovery Automation
- Prometheus & Grafana Monitoring
- Automated Security Scanning

---

# 👨‍💻 Author

**Silias Adodo**

Cloud & DevOps Engineer

📧 Email: siliasodion809@gmail.com

🔗 LinkedIn: https:www.linkedin.com/in/siliasadodo

🔗 GitHub: https://github.com/SiliasOdion809

---

## ⭐ Acknowledgements

This project was developed as part of my Cloud Engineering Capstone to demonstrate modern DevOps practices, cloud-native architecture, Infrastructure as Code, and production-grade deployment on AWS.