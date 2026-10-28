variable "instance_type" {
    default ="t3.micro"
    type = string
    description = "This is aws instance type"
}

variable "ami_id" {
  default = "ami-0055977a6e828a4f4"
  type = string
  description = "This is RHEL9 image"
}

variable "ec2_tags" {
  type = map 
  default = {
     Name = "var-demo"
     Env  = "dev"
     Project = "Roboshop"
     Terraform = "True"
  }
}

variable "sg_name" {
  type = string 
  default = "allow-all"
}

variable "sg_description" {
   type = string
   default = "Allow all traffic"
}

variable "sg_from_port" {
  type = number 
  default = 0
}

variable "sg_to_port" {
   type = number
   default = 0
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map 
  default = {
     Env  = "dev"
     Project = "Roboshop"
     Terraform = "True"
  }
}

variable "environment" {
   type = string 
   default = "dev"
}