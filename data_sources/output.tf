output "ami_id" {
  value = data.aws_ami.joindevops.id
}

output "instance_info" {
  value = data.aws_instance.test.private_ip
}