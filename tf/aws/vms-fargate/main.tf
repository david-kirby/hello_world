###################################
# Terraform & Provider Information
###################################
terraform {
  required_version = ">=0.12.15"

  #   backend "s3" {
  #     bucket         = "i-aws-sports-video-terraform-state"
  #     key            = "testing"
  #     encrypt        = "true"
  #     region         = "us-east-1"
  #     dynamodb_table = "terraform-lock"
  #     role_arn       = "arn:aws:iam::378170005943:role/video-devops"
  #   }
}

provider "aws" {
  region  = var.aws_region
  version = ">= 2"
  #   assume_role {
  #     role_arn     = var.workspaces[terraform.workspace]
  #     session_name = "terraform_session"
  #   }
}


data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
