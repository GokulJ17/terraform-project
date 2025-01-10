locals {
  policy = file("./policy.json")
  ecr    = file("./ECRpolicy.json")
}

variable "name" {
  default = "EC2_FULL_ACCESS"
  type    = string
}

variable "Container" {
  default = "ECR_FULL_ACCESS"
  type    = string
}

variable "Myinstance" {
  default = "DEV"
  type    = string

}
variable "demo_sg" {
  default = "10.20.40.50/32"

}
variable "instancetype" {
  default = "t2.micro"
  type    = string
}
variable "ami" {
  default = "ami-0fd05997b4dff7aac"
  type    = string
}
variable "A-Z" {
  default = "ap-south-1a"
  type    = string
}