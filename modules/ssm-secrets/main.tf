resource "aws_ssm_parameter" "secret" {
  name  = var.secret_name
  type  = var.secure_string ? "SecureString" : "String"
  value = var.secret_value

  key_id = var.kms_key_id

  tags = {
    Name = var.secret_name
  }
}
