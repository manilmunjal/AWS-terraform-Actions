terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.44.0"
    }
  }

  backend "s3" {
    bucket         = "keepthisnameuniqueworldwideyoucanusenumberlike8976"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"

  }
}

provider "aws" {
  region = "us-east-1"
}
