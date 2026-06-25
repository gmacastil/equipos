resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = merge(
    var.tags,
    {
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  )
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = !var.public_access
  block_public_policy     = !var.public_access
  ignore_public_acls      = !var.public_access
  restrict_public_buckets = !var.public_access
}

resource "aws_s3_bucket_ownership_controls" "this" {
  bucket = aws_s3_bucket.this.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "this" {
  depends_on = [
    aws_s3_bucket_ownership_controls.this,
    aws_s3_bucket_public_access_block.this
  ]

  bucket = aws_s3_bucket.this.id
  acl    = var.public_access ? "public-read" : "private"
}

resource "aws_s3_object" "index_html" {
  count = var.upload_index_html != null ? 1 : 0

  bucket       = aws_s3_bucket.this.id
  key          = "index.html"
  source       = var.upload_index_html
  content_type = "text/html"
  acl          = var.public_access ? "public-read" : "private"

  etag = filemd5(var.upload_index_html)

  depends_on = [
    aws_s3_bucket_acl.this,
    aws_s3_bucket_public_access_block.this
  ]
}
