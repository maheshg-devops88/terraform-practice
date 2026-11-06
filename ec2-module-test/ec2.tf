module "ec2" {
  source        = "../terraform-aws-instance"
  instance_type = "t3.micro"
  ami_id        = local.ami_id
  environment   = var.environment
  project       = "Roboshop"
  sg_ids        = ["sg-020b6d9853c171a73"]
  tags = {
    Name = "${var.project}-${var.environment}-${var.component}"
  }
}