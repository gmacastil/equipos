terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3_equipos" {
  source = "./modules/s3-bucket"

  bucket_name        = var.bucket_name
  environment        = var.environment
  enable_versioning  = false
  enable_encryption  = false
  public_access      = true
  upload_index_html  = "${path.module}/index.html"

  tags = {
    Project = var.project_name
    Purpose = "general"
  }
}
