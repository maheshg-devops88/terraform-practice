resource "aws_route53_record" "demo-rt53" {
  count   = 10
  zone_id = var.zone_id
  name    = "${var.Instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = "2"
  #records = [ aws_instance.demo[count.index].private_ip ]
  records         = [ aws_instance.demo[count.index].private_ip ]
  allow_overwrite = true
}

resource "aws_route53_record" "roboshop-rt53" {
  zone_id = var.zone_id
  name    = "roboshop.${var.domain_name}"
  type    = "A"
  ttl     = "2"
  #records = [ aws_instance.demo[count.index].private_ip ]
  records         = [aws_instance.demo[index(var.Instances, "frontend")].public_ip]
  allow_overwrite = true
}