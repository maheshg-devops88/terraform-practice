resource "aws_security_group" "demo_sg" {
  name = "allow_all_Terraform"


  dynamic "ingress" {
    for_each = toset(var.ingress_rules)

    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      cidr_blocks = ingress.value.cidr_blocks
      protocol = "tcp"
    }
  }
}