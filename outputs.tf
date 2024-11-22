output "vpc_id" {
  value = module.network.vpc_id
}

output "user_alb_dns" {
  value = module.compute.user_alb_dns
}

output "app_alb_dns" {
  value = module.compute.app_alb_dns
}

output "db_endpoint" {
  value = module.database.db_endpoint
}

output "s3_bucket_name" {
  value = module.storage.bucket_name
}
