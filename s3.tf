resource "aws_s3_bucket" "manoj_bucket" {
   count = 3
   bucket = "${var.s3_bucket_name}${count.index}"
   acl = "private"
   versioning {
      enabled = true
   }
   force_destroy = "true"
}