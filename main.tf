terraform {
  required_version = ">= 1.1.8"
  required_providers {
    aws = ">= 3.37"
  }

  backend "s3" {
    bucket = "ilg-jebs-tfstate"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  profile                 = "default"
  shared_credentials_file = "~/.aws/credentials"
  region                  = "us-east-1"
}

