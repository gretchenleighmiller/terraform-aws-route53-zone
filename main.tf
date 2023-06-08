# --- Route53 Zone ------------------------------------------------------------
resource "aws_route53_zone" "zone" {
  name = var.zone_name
}

# --- Zone admin records ------------------------------------------------------
resource "aws_route53_record" "ns" {
  zone_id = aws_route53_zone.zone.zone_id
  name    = var.zone_name
  type    = "NS"
  ttl     = var.ns_records_ttl
  records = var.ns_records
}

resource "aws_route53_record" "soa" {
  zone_id = aws_route53_zone.zone.zone_id
  name    = var.zone_name
  type    = "SOA"
  ttl     = var.soa_records_ttl
  records = var.soa_records
}

resource "aws_route53_record" "mx" {
  zone_id = aws_route53_zone.zone.zone_id
  name    = var.zone_name
  type    = "MX"
  ttl     = var.mx_records_ttl
  records = var.mx_records
}

# --- Zone A and CNAME records (optional) -------------------------------------
resource "aws_route53_record" "a" {
  for_each = { for a_record in var.a_records : a_record.name => a_record }

  zone_id = aws_route53_zone.zone.zone_id
  name    = each.key
  type    = "A"
  ttl     = each.value.ttl
  records = each.value.records
}

resource "aws_route53_record" "cname" {
  for_each = { for cname_record in var.cname_records : cname_record.name => cname_record }

  zone_id = aws_route53_zone.zone.zone_id
  name    = each.key
  type    = "CNAME"
  ttl     = each.value.ttl
  records = each.value.records
}
