data "terraform_remote_state" "aws_iam" {
  backend = "s3"

  config = {
    bucket = "shareinfo-terraform"
    key    = "shareinfo-terraform/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "shareinfo-terraform"
    key    = "shareinfo-terraform/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
