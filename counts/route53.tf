resource "aws_route53_record" "demo-rt53" {
  count = 10
  zone_id = var.zone_id
  name    = "${var.Instances[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = "2"
  records = [ aws_instance.demo[count.index].private_ip ]
  allow_overwrite = true
}