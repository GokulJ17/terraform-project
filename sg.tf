resource "aws_security_group" "demo_sg" {
  name = "demo_sg"

  dynamic "ingress" {
    for_each = var.demo_sg
    iterator = port
    content {
      description = "Allow ingress traffic"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {
    for_each = var.demo_sg
    iterator = port
    content {
      description = "Allow egress traffic"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}
