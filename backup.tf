resource "aws_backup_vault" "backup_vault" {
  name = "secure-backup-vault"
}

resource "aws_route53_health_check" "app_health_check" {
  fqdn             = "example.com"
  port             = 80
  type             = "HTTP"
  request_interval = 30
  failure_threshold = 3
}
