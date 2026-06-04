output "ui_repository_url" {
  value = aws_ecr_repository.ui.repository_url
}

output "catalog_repository_url" {
  value = aws_ecr_repository.catalog.repository_url
}

output "cart_repository_url" {
  value = aws_ecr_repository.cart.repository_url
}

output "checkout_repository_url" {
  value = aws_ecr_repository.checkout.repository_url
}

output "orders_repository_url" {
  value = aws_ecr_repository.orders.repository_url
}