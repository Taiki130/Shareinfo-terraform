resource "aws_acm_certificate" "shareinfo" {
  domain_name               = data.aws_route53_zone.shareinfo.name
  subject_alternative_names = []
  validation_method         = "DNS"
}
