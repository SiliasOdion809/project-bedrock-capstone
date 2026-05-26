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
