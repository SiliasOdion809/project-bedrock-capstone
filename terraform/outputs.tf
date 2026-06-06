output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "vpc_id" {
  value = module.networking.vpc_id
}

output "region" {
  value = "us-east-1"
}

output "mysql_endpoint" {
  value = module.rds.mysql_endpoint
}

output "postgres_endpoint" {
  value = module.rds.postgres_endpoint
}

output "mysql_db_instance_id" {
  value = module.rds.mysql_db_instance_id
}

output "postgres_db_instance_id" {
  value = module.rds.postgres_db_instance_id
}

output "rds_security_group_id" {
  value = module.rds.rds_security_group_id
}

output "dynamodb_table_name" {
  value = module.dynamodb.dynamodb_table_name
}

output "dynamodb_table_arn" {
  value = module.dynamodb.dynamodb_table_arn
}

output "assets_bucket_name" {
  value = module.s3.bucket_name
}

output "lambda_function_name" {
  value = module.lambda.lambda_name
}

output "lambda_function_arn" {
  value = module.lambda.lambda_arn
}

output "mysql_username" {
  value = var.mysql_username
}

output "mysql_password" {
  value     = var.mysql_password
  sensitive = true
}

output "postgres_username" {
  value = var.postgres_username
}

output "postgres_password" {
  value     = var.postgres_password
  sensitive = true
}