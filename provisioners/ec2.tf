resource "aws_instance" "demo" {
  ami                    = "ami-0055977a6e828a4f4"
  instance_type          = "t3.micro"
  vpc_security_group_ids = [aws_security_group.demo_sg.id]
  tags = {
    Name = "terraform_vm"
    Project = "Roboshop"
  }

  connection {
    type = "ssh"
    user = "ec2-user"
    password = "DevOps321"
    host = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [ "sudo dnf install nginx -y",
               "sudo systemctl start nginx" ]
  }

  #  provisioner "local-exec" {
  #      command = "exit 1"
  #      on_failure = continue
  #      }

    provisioner "local-exec" {
    command = "echo ${self.public_ip} > inventory.ini"
    }

    provisioner "local-exec" {
      when = destroy
      command = "echo 'deleting the instance'"
    }

  provisioner "remote-exec" {
     inline = [ "sudo systemctl stop nginx" ]
     when = destroy
  }
}