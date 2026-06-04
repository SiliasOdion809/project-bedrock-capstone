module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "project-bedrock-cluster"
  cluster_version = "1.34"

  enable_cluster_creator_admin_permissions = true

  vpc_id = var.vpc_id

  subnet_ids = var.private_subnet_ids

  enable_irsa = true

  cluster_endpoint_public_access = true

  eks_managed_node_groups = {
    bedrock_nodes = {
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 2
      desired_size   = 2
    }
  }

  tags = {
    Project = "karatu-2025-capstone"
  }
}