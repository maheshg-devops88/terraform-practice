variable "instance_type" {
  default     = "t3.micro"
  type        = string
  description = "This is aws instance type"
}

variable "ami_id" {
  default     = "ami-0055977a6e828a4f4"
  type        = string
  description = "This is RHEL9 image"
}

variable "ec2_tags" {
  default = {
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}

variable "sg_name" {
  type    = string
  default = "allow-all"
}

variable "sg_description" {
  type    = string
  default = "Allow all traffic"
}

variable "sg_from_port" {
  type    = number
  default = 0
}

variable "sg_to_port" {
  type    = number
  default = 0
}

variable "cidr_blocks" {
  type    = list(any)
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  type = map(any)
  default = {
    Env       = "dev"
    Project   = "Roboshop"
    Terraform = "True"
  }
}

# variable "instances" {
#   type = map
#   default = {
#     mongodb = "t3.micro"
#     user    = "t3.small"
#   }
# }

variable "zone_id" {
  default = "Z01154241BNSMMPVQO32W"
}

variable "domain_name" {
  default = "daws88s.shop"
}

variable "instances" {
  type = list 
  default = ["mongodb","redis"]
}