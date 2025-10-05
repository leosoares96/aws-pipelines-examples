output "bucket_arn" {
  description = "ARN do bucket S3"
  value       = module.s3.bucket_arn
}

output "bucket_name" {
  description = "Nome do bucket S3"
  value       = module.s3.bucket_name
}
