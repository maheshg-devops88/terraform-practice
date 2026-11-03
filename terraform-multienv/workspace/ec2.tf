resource "aws_instance" "demo" {
  ami                    = local.ami_id
  instance_type          = lookup(var.instance_type, local.environment)
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    Name    = "${local.environment}-instance"
    Project = var.project
    Env     = local.environment
  }



}

