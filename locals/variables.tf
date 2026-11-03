variable "ami_id" {
  default = "ami-0055977a6e828a4f4"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "ec2_tags" {
  type = map(any)
  default = {
    Name = "test-vm"
  }
}

variable "environment" {
  default = "sbx"
}

variable "common_tags" {
  type = map(any)
  default = {
    project     = "roboshop"
    built       = "terraform"
    environment = "sbx"
  }
}



