variable "instance_type" {
  type = string
}

variable "ami_id" {
  type = string
  default = ""
}

variable "tags" {
  type    = map(any)
  default = {}
}

variable "project" {
  type = string
}

variable "environment" {
  type = string
}

variable "sg_ids" {
  type = list(string)
}