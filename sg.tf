resource "aws_security_group" "demo_sg" {
  name = "demo_sg"

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
    cidr_blocks = [var.demo_sg]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
    cidr_blocks = [var.demo_sg]
  }

  ingress {
    description = "TLS from VPC"
    from_port   = 443
    protocol    = "tcp"
    to_port     = 443
    cidr_blocks = [var.demo_sg]
  }
}