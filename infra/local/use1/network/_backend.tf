terraform {
  backend "s3" {
    bucket = "aws-jenkins-server"
    key    = "terraform/network.terraform.tfstate"
    region = "us-east-1"
  }
}