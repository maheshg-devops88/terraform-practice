resource "aws_instance" "demo" {
  for_each               = toset(var.instances)
  ami                    = var.ami_id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    Name      = each.key
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}