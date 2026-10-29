variable "Instances" {
  type    = list(any)
  default = ["mongodb", "redis", "mysql", "rabbitmq", "user", "cart", "catalogue", "shipping", "payment", "frontend"]
}

variable "zone_id" {
  default = "Z01154241BNSMMPVQO32W"
}

variable "domain_name" {
  default = "daws88s.shop"
}