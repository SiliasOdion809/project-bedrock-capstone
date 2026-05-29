module "networking" {
  source = "./networking"
}

module "eks" {
  source = "./eks"

  vpc_id             = module.networking.vpc_id
  private_subnet_ids = module.networking.private_subnets
}

module "rds" {
  source = "./rds"

  vpc_id             = module.networking.vpc_id
  private_subnet_ids = module.networking.private_subnets

  mysql_password     = "StrongMysqlPass123!"
  postgres_password  = "StrongPostgresPass123!"
}

module "dynamodb" {
  source = "./dynamodb"
}