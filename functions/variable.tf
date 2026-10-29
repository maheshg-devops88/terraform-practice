variable "common_tags" {
   default = {
      project = "Roboshop"
      Terraform = "True"
      Environment = "Dev"
   }
}

variable "ec2_tags" {
   default = {
    Name = "terraform-vm"
   }
}

variable "sg_tags" {
  default = {
     Name = "functions-sg"
  }
}

variable "Instances" {
  type    = list(any)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "user", "cart", "catalogue", "shipping", "payment", "frontend"]
}

