output "log_group_name" {
  value = aws_cloudwatch_log_group.log_group.name
}

output "alarm_name" {
  value = var.alarm_name
  description = "CloudWatch alarm name (if created)"
}
