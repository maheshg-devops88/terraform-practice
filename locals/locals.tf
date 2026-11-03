locals {
  ec2_final_tags = merge(var.common_tags, var.ec2_tags)
  instance_type  = var.instance_type
}