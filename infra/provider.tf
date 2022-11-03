terraform {
  required_version = ">= 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.34.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.14.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.7.1"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "3.25.0"
    }
    # time = {
    #   source = "hashicorp/time"
    #   version = "0.7.2"
    # }
  }
}
provider "aws" {
  region = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}
# Get AWS Account ID
data "aws_caller_identity" "current" {}

# Declare the data source
data "aws_availability_zones" "available" {}

provider "http" {}