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

  mysql_password    = "StrongMysqlPass123!"
  postgres_password = "StrongPostgresPass123!"
}

module "dynamodb" {
  source = "./dynamodb"
}

module "s3" {
  source = "./s3"

  bucket_name = "bedrock-assets-alt-soe-025-3757"
}

module "iam" {
  source = "./iam"
}

module "lambda" {
  source = "./lambda"

  bucket_name = module.s3.bucket_name

  bucket_arn = module.s3.bucket_arn

  lambda_role_arn = module.iam.lambda_role_arn
}

module "monitoring" {
  source = "./monitoring"
}

module "ecr" {
  source = "./ecr"
}