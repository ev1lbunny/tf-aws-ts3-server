terraform {
  backend "s3" {
    key            = "terraform-aws/ts3_server/terraform.tfstate"
    dynamodb_table = "terraform-statelock"
  }
  required_version = ">= 0.14.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = var.aws_credentials_profile
  region  = var.aws_region
}
