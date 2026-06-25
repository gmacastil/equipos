variable "aws_region" {
  description = "Región de AWS donde se desplegará el bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string
  default     = "dev"
}

variable "project_name" {
  description = "Nombre del proyecto"
  type        = string
  default     = "equipos"
}
