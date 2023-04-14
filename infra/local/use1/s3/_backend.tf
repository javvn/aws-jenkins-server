terraform {
  #  backend "local" {
  #    path = "./terraform.tfstate"
  #  }
  backend "s3" {
    bucket = "aws-jenkins-server"
    key    = "terraform/local/s3.terraform.tfstate"
    region = "us-east-1"
  }
}