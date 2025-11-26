output "ssm_name" {
  value = aws_ssm_parameter.secret.name
}

output "ssm_arn" {
  value = aws_ssm_parameter.secret.arn
}
