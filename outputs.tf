output "vpc_id" {
  value = aws_vpc.secure_vpc.id
}

output "kms_key_id" {
  value = aws_kms_key.kms_key.id
}
