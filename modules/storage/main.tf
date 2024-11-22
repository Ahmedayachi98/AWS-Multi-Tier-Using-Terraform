resource "aws_s3_bucket" "app_bucket" {
  bucket = "app-storage-bucket"
}

output "bucket_name" {
  value = aws_s3_bucket.app_bucket.id
}
