variable "secret_name" {
  description = "Name of the SSM parameter"
  type        = string
}

variable "secret_value" {
  description = "Value of the SSM parameter"
  type        = string
  sensitive   = true
}

variable "secure_string" {
  description = "Store secret as SecureString"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "KMS Key ID for encryption (optional)"
  type        = string
  default     = null
}
