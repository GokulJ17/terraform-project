resource "aws_instance" "terraform" {
  ami               = data.aws_ami.web_ami.id
  instance_type     = var.instancetype
  availability_zone = var.A-Z

  tags = {
    Name = var.Myinstance
  }
  root_block_device {
  volume_size           = 20             
  volume_type           = "gp2"           
  encrypted             = true            
  delete_on_termination = true            
}

}
data "aws_ami" "web_ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*"]
  }
}




