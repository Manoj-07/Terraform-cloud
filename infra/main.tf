# Create LANDING_BUCKET Bucket
resource "aws_s3_bucket" "landing_bucket" {
  bucket        = "b-${var.organization_name}-${var.environment}-logs"
  force_destroy = true
  tags = {
    Name        = "${var.organization_name}"
    Environment = "${var.environment}"
    Description = "Store landing object"
  }
}
resource "aws_s3_bucket_acl" "landing_bucket" {
  bucket = aws_s3_bucket.landing_bucket.id
  acl    = "private"
}
resource "aws_s3_bucket_public_access_block" "landing_bucket" {
  bucket = aws_s3_bucket.landing_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_server_side_encryption_configuration" "landing_bucket" {
  bucket = aws_s3_bucket.landing_bucket.bucket
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}