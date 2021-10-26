terraform {
  required_version = ">=0.12"
}

provider "aws" {
  region = "us-east-1"
}

variable "bucket_name" {
    type = string
   default = "terr-test-buc"
}

variable "acl_value" {
  default = "private"
}

resource "aws_s3_bucket" "demos3" {
  bucket = var.bucket_name
  acl    = var.acl_value

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

}