resource "aws_instance" "demo" {
  # count                  = 10
  count = length(var.Instances)
  ami                    = "ami-0055977a6e828a4f4"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    Name = var.Instances[count.index]
  }
}