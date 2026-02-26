terraform {
  required_version = ">= 1.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "s3-for-tf-01"
    key            = "s3/s3-for-tf-01/poc/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-for-lockid"
    encrypt        = true
  }
}