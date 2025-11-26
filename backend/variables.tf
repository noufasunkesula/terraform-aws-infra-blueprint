variable "bucket_name" {
  type        = string
  description = "S3 bucket name for Terraform state"
}

variable "lock_table" {
  type        = string
  description = "DynamoDB table for state locking"
}
