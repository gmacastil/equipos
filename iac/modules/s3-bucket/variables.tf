variable "bucket_name" {
  description = "Nombre del bucket S3"
  type        = string
}

variable "environment" {
  description = "Ambiente de despliegue"
  type        = string
}

variable "enable_versioning" {
  description = "Habilitar versionamiento del bucket"
  type        = bool
  default     = false
}

variable "enable_encryption" {
  description = "Habilitar encriptación del bucket"
  type        = bool
  default     = false
}

variable "public_access" {
  description = "Permitir acceso público al bucket"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags para el bucket"
  type        = map(string)
  default     = {}
}

variable "upload_index_html" {
  description = "Ruta al archivo index.html a subir"
  type        = string
  default     = null
}
