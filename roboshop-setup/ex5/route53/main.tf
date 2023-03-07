resource "aws_route53_record" "record" {
  zone_id = "Z05324103C6FB88430WB"
  name    = "${var.component}-dev.learndevopsb71shop.site"
  type    = "A"
  ttl     = 30
  records = [aws_instance.ec2.private_ip]
}
variable "private_ip" {}
