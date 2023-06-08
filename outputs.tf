output "route53_zone_id" {
  value       = aws_route53_zone.zone.zone_id
  description = "The Route 53 Zone ID."
}
