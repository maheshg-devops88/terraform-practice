resource "aws_instance" "demo" {
  ami                    = "ami-0055977a6e828a4f4"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    Name    = "${var.environment}-roboshop"
    Project = "Roboshop"
  }



}

