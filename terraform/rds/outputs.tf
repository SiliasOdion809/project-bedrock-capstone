output "mysql_endpoint" {
  value = aws_db_instance.mysql.endpoint
}

output "postgres_endpoint" {
  value = aws_db_instance.postgres.endpoint
}

output "mysql_db_instance_id" {
  value = aws_db_instance.mysql.id
}

output "postgres_db_instance_id" {
  value = aws_db_instance.postgres.id
}

output "rds_security_group_id" {
  value = aws_security_group.rds_sg.id
}