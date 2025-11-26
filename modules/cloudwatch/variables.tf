variable "log_group_name" {
  description = "Name of the CloudWatch log group"
  type        = string
}

variable "retention_in_days" {
  description = "Retention days for logs"
  type        = number
  default     = 30
}

variable "alarm_name" {
  description = "Name of the CloudWatch alarm"
  type        = string
  default     = null
}

variable "alarm_metric" {
  description = "Metric to alarm on"
  type        = string
  default     = null
}

variable "threshold" {
  description = "Alarm threshold"
  type        = number
  default     = 80
}

variable "sns_topic_arn" {
  description = "SNS topic ARN to send notifications"
  type        = string
  default     = null
}
