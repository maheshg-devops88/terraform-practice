module "ec2" {
   source = "../terraform-aws-instance"
   instance_type = "t3.micro"
   ami_id = "ami-0055977a6e828a4f4"
}