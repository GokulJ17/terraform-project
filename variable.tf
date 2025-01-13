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
  type    = list(number)
  default = [8080, 8081, 9000, 9001]

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