# ---------------------------------------------
# Terraform configuration
# ---------------------------------------------
terraform {
  required_version = ">=0.13"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
#  backend "s3" {
#    bucket  = "{YOUR-S3-BUCKET-NAME}"
#    key     = "{YOUR-S3-BUCKET-KEY}"
#    region  = "ap-northeast-1"
#    profile = "pf-1-sandbox-sso"
#  }

# ---------------------------------------------
# Provider
# ---------------------------------------------
provider "aws" {
  profile = "pf-1-sandbox-sso"
  region  = "ap-northeast-1"
}

provider "aws" {
  alias   = "virginia"
  profile = "pf-1-sandbox-sso"
  region  = "us-east-1"
}
