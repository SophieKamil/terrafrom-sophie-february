resource "aws_route53_record" "www" {
  zone_id = "Z0134239684DDMYX6MVE"
  name    = "www.sophiekamil.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_instance.web.public_ip}"]
}