resource "cloudflare_record" "nameserver_records" {
  count   = 4 # Route53 gives you 4 nameservers
  zone_id = var.cloudflare_zone_id
  name    = "@" # Your root domain: samueltechspace.online
  type    = "NS"
  value   = aws_route53_zone.r53_zone.name_servers[count.index]
  ttl     = 3600
}