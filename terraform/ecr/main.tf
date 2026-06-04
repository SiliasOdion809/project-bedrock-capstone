resource "aws_ecr_repository" "ui" {
  name = "retail-ui"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "catalog" {
  name = "retail-catalog"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "cart" {
  name = "retail-cart"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "checkout" {
  name = "retail-checkout"

  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "orders" {
  name = "retail-orders"

  image_scanning_configuration {
    scan_on_push = true
  }
}