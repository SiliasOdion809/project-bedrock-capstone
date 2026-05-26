module "networking" {
  source = "./networking"
}

module "eks" {
  source = "./eks"

  vpc_id             = module.networking.vpc_id
  private_subnet_ids = module.networking.private_subnets
}