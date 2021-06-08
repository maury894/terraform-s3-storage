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

resource "aws_instance" "app_server" {
  ami           = "ami-08962a4068733a2b6"
  instance_type = "t2.micro"

  tags = {
    Name = "TestGitHubActionsInstance"
  }
}
