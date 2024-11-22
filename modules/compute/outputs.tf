output "user_alb_dns" {
  value = aws_lb.user_alb.dns_name
}

output "app_alb_dns" {
  value = aws_lb.app_alb.dns_name
}
