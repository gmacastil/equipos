output "bucket_id" {
  description = "ID del bucket S3"
  value       = module.s3_equipos.bucket_id
}

output "bucket_arn" {
  description = "ARN del bucket S3"
  value       = module.s3_equipos.bucket_arn
}

output "bucket_domain_name" {
  description = "Nombre de dominio del bucket"
  value       = module.s3_equipos.bucket_domain_name
}

output "bucket_regional_domain_name" {
  description = "Nombre de dominio regional del bucket"
  value       = module.s3_equipos.bucket_regional_domain_name
}

output "index_html_url" {
  description = "URL pública del archivo index.html"
  value       = module.s3_equipos.index_html_url
}
