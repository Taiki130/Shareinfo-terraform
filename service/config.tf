terraform {
  backend "s3" {
    bucket = "shareinfo-terraform"
    key    = "shareinfo-terraform/service/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
