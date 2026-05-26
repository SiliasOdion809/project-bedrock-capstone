terraform {
  backend "s3" {
    bucket = "project-bedrock-tfstate-silias"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}