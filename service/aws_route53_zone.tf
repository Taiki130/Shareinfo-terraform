data "aws_route53_zone" "shareinfo" {
  name = "shareinfo.org"
}

resource "aws_route53_record" "shareinfo" {
  zone_id = data.aws_route53_zone.shareinfo.zone_id
  name    = data.aws_route53_zone.shareinfo.name
  type    = "A"

  alias {
    name                   = aws_lb.lb.dns_name
    zone_id                = aws_lb.lb.zone_id
    evaluate_target_health = true
  }
}
