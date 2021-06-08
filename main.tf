terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.44"
    }
  }

  required_version = ">= 0.15"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_s3_bucket" "s3-g-actions-bucket-3" {
  bucket = "s3-g-actions-bucket"
  acl    = "private"

  tags = {
    Name        = "Terraform-Bucket"
    Environment = "Dev"
  }
}
