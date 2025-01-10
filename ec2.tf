resource "aws_instance" "terraform" {
  ami               = var.ami
  instance_type     = var.instancetype
  availability_zone = var.A-Z

  tags = {
    Name = var.Myinstance
  }
  #count = 5
}
