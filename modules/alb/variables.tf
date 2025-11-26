variable "alb_name" {
  description = "Name of the ALB"
  type        = string
}

variable "subnet_ids" {
  description = "Public subnet IDs for ALB"
  type        = list(string)
}

variable "vpc_id" {
  description = "VPC ID for ALB SG and Target Groups"
  type        = string
}

variable "target_port" {
  description = "Port for target group"
  type        = number
  default     = 80
}

variable "health_check_path" {
  description = "Path for ALB health check"
  type        = string
  default     = "/"
}

variable "enable_https" {
  description = "Enable HTTPS listener for ALB"
  type        = bool
  default     = false
}

variable "certificate_arn" {
  description = "ACM cert ARN for HTTPS"
  type        = string
  default     = null
}
