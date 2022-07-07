provider "aws" {
  region = "us-east-1"
  # allowed_account_ids = var.allowed_account_ids
}

terraform {
  backend "s3" {
    bucket = "muf-terraform-sate-devops"
    key    = "devops/jenkins/states/JenkinMasterEC2InstanceConfig.tfstate"
    region = "us-east-1"
    # dynamodb_table = "muf-terraform-sate-lock-dev"
  }
}