output "db_endpoint" {
  description = "RDS endpoint"
  value       = aws_db_instance.rds.endpoint
}

output "db_identifier" {
  description = "RDS instance identifier"
  value       = aws_db_instance.rds.identifier
}

output "db_security_group_id" {
  description = "Security group ID for RDS"
  value       = aws_security_group.rds_sg.id
}
