terraform {
  required_providers {
    helm = {
      source = "hashicorp/helm"
    }
  }
}

resource "helm_release" "aws_load_balancer_controller" {
  name             = "aws-load-balancer-controller"
  repository       = "https://aws.github.io/eks-charts"
  chart            = "aws-load-balancer-controller"
  namespace        = "kube-system"
  create_namespace = false

  values = [
    yamlencode({
      clusterName = var.cluster_name
      region      = var.region
      vpcId       = var.vpc_id

      serviceAccount = {
        create = true
        name   = "aws-load-balancer-controller"

        annotations = {
          "eks.amazonaws.com/role-arn" = var.alb_controller_role_arn
        }
      }
    })
  ]
}

resource "aws_eks_addon" "cloudwatch_observability" {
  cluster_name = var.cluster_name
  addon_name   = "amazon-cloudwatch-observability"

  tags = {
    Project = "karatu-2025-capstone"
  }
}