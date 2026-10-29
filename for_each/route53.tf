resource "aws_route53_record" "demo-rt53" {
  for_each = toset(var.instances)
  zone_id = var.zone_id
  name    = "${each.key}.${var.domain_name}"
  type    = "A"
  ttl     = "2"
  records = [ aws_instance.demo[each.key].private_ip ]
  allow_overwrite = true
}