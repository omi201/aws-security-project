resource "aws_guardduty_detector" "gd" {
  enable = true
}

resource "aws_securityhub_account" "security_hub" {}

resource "aws_config_configuration_recorder" "config" {
  name     = "config-recorder"
  role_arn = aws_iam_role.security_admin_role.arn
}

resource "aws_waf_web_acl" "web_acl" {
  name        = "web-acl"
  metric_name = "web-acl-metric"
  default_action {
    type = "BLOCK"
  }
}

resource "aws_shield_protection" "shield" {
  name         = "ddos-protection"
  resource_arn = aws_vpc.secure_vpc.arn
}
