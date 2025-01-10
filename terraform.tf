terraform {
  backend "s3" {
    bucket = "my-buc-terraform"
    key    = "ec2/terraform.tfstate"
    region = "ap-south-1"
  }
}
