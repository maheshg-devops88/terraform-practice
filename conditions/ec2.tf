resource "aws_instance" "demo" {
  ami                    = var.ami_id
  instance_type          = var.environment == "dev" ? "t3.micro" : "t3.small"
  vpc_security_group_ids = [aws_security_group.demo_sg.id] 
  tags = var.ec2_tags
  }
