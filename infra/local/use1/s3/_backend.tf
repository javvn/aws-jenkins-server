terraform {
  #  backend "local" {
  #    path = "./terraform.tfstate"
  #  }
  backend "s3" {
    bucket = "aws-jenkins-server"
    key    = "terraform/s3.terraform.tfstate"
    region = "us-east-1"
  }
}