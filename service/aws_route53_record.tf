resource "aws_route53_record" "shareinfo_certificate" {
  zone_id = data.aws_route53_zone.shareinfo.id
  name    = aws_acm_certificate.shareinfo.domain_validation_options[0].resource_record_name
  type    = aws_acm_certificate.shareinfo.domain_validation_options[0].resource_record_type
  records = [
    aws_acm_certificate.shareinfo.domain_validation_options[0].resource_record_value
  ]
  ttl = 60
}
