terraform {
  backend "s3" {
    bucket = "shareinfo-terraform"
    key    = "shareinfo-terraform/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
