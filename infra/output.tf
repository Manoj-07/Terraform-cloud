output "bucket_name" {
    value = aws_s3_bucket.landing_bucket.bucket
}

output "bucket_id" {
    value = aws_s3_bucket_acl.landing_bucket.id
}
output "bucket" {
    value = aws_s3_bucket_acl.landing_bucket.id
}
output "bucket2" {
    value = aws_s3_bucket_acl.landing_bucket.id
}
