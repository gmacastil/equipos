output "bucket_id" {
  description = "ID del bucket S3"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "ARN del bucket S3"
  value       = aws_s3_bucket.this.arn
}

output "bucket_domain_name" {
  description = "Nombre de dominio del bucket"
  value       = aws_s3_bucket.this.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "Nombre de dominio regional del bucket"
  value       = aws_s3_bucket.this.bucket_regional_domain_name
}

output "index_html_url" {
  description = "URL pública del archivo index.html"
  value       = var.upload_index_html != null ? "https://${aws_s3_bucket.this.bucket_domain_name}/index.html" : null
}
