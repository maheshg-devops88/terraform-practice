resource "aws_instance" "demo" {
  ami                    = var.ami_id
  instance_type          = local.instance_type
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags                   = local.ec2_final_tags
}

