resource "aws_db_subnet_group" "bedrock_db_subnet_group" {
  name       = "bedrock-db-subnet-group"
  subnet_ids = var.private_subnet_ids

  tags = {
    Name = "bedrock-db-subnet-group"
  }
}

resource "aws_security_group" "rds_sg" {
  name        = "bedrock-rds-sg"
  description = "RDS Security Group"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  ingress {
    from_port   = 5432
    to_port     = 5432
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_db_instance" "mysql" {
  identifier        = "bedrock-mysql"
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t3.micro"

  username = var.mysql_username
  password = var.mysql_password

  db_name = "catalog"

  publicly_accessible = false
  skip_final_snapshot = true

  db_subnet_group_name   = aws_db_subnet_group.bedrock_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}

resource "aws_db_instance" "postgres" {
  identifier        = "bedrock-postgres"
  allocated_storage = 20
  engine            = "postgres"
  engine_version    = "15"
  instance_class    = "db.t3.micro"

  username = var.postgres_username
  password = var.postgres_password

  db_name = "orders"

  publicly_accessible = false
  skip_final_snapshot = true

  db_subnet_group_name   = aws_db_subnet_group.bedrock_db_subnet_group.name
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
}