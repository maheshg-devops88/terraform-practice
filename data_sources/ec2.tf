resource "aws_instance" "demo" {
  ami                    = data.aws_ami.joindevops.id
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    Name = "terraform_vm"
  }
}