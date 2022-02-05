terraform {
  backend "s3" {
    bucket         = "ucef-terraform-state"
    key            = "ucefclusters.tfstate"
    region         = "us-west-2"
    dynamodb_table = "ucef-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

data "aws_ssm_parameter" "workers_ami_id" {
  name            = "/aws/service/eks/optimized-ami/1.21/amazon-linux-2/recommended/image_id"
  with_decryption = false
}
