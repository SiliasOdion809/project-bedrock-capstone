variable "vpc_id" {}

variable "private_subnet_ids" {
  type = list(string)
}

variable "mysql_username" {
  default = "admin"
}

variable "mysql_password" {
  sensitive = true
}

variable "postgres_username" {
  default = "postgresadmin"
}

variable "postgres_password" {
  sensitive = true
}