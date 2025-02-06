resource "aws_kms_key" "kms_key" {
  description             = "KMS key for data encryption"
  deletion_window_in_days = 10
}

resource "aws_secretsmanager_secret" "db_secret" {
  name = "db-secret"
}
