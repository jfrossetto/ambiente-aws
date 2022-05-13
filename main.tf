terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = ">= 3"
  }

  cloud {
    organization = "jfrossetto"
    workspaces {
      name = "ambiente-aws"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}