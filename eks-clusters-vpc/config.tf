terraform {
  backend "s3" {
    bucket         = "ucef-vpc-terraform-state"
    key            = "ucef-vpc.tfstate"
    region         = "us-west-2"
    dynamodb_table = "ucef-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}
