resource "aws_s3_bucket" "assets" {
  bucket = var.bucket_name

  tags = {
    Project = "karatu-2025-capstone"
  }
}

resource "aws_s3_bucket_public_access_block" "assets" {
  bucket = aws_s3_bucket.assets.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}