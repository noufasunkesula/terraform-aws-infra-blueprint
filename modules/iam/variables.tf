variable "role_name" {
  type        = string
  description = "Name of the IAM role"
}

variable "assume_service" {
  type        = string
  description = "AWS service that will assume this role (e.g., ec2.amazonaws.com)"
}

variable "policy_json" {
  type        = string
  description = "JSON IAM policy document"
}
