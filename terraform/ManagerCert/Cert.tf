resource "aws_acm_certificate" "cert" {
  domain_name       = var.domain_name
  validation_method = var.val_check


  lifecycle {
    create_before_destroy = true
  }
}