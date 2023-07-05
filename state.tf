terraform {
  backend "s3" {
    bucket = "devopsa71"
    key    = "jenkins/terraform.tfstate"
    region = "us-east-1"
  }
}