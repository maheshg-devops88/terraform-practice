resource "aws_instance" "demo" {
  
  ami                    = "ami-0055977a6e828a4f4"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = merge(var.common_tags,var.ec2_tags)
  
}