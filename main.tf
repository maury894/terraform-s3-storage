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

resource "aws_s3_bucket" "MyFirtsS3" {
  bucket = "my-tf-test-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
