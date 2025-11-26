variable "domain_name" {
  type        = string
  description = "OpenSearch domain name"
  default     = "app-search"
}

variable "engine_version" {
  type        = string
  description = "Version of OpenSearch"
  default     = "2.11"
}

variable "instance_type" {
  type        = string
  description = "Instance type for data nodes"
  default     = "t3.small.search"
}

variable "instance_count" {
  type        = number
  description = "Number of data nodes"
  default     = 2
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnet IDs for VPC deployment"
}

variable "security_group_ids" {
  type        = list(string)
  description = "Security group IDs for OpenSearch"
}

variable "ebs_volume_size" {
  type        = number
  description = "EBS volume size (GB)"
  default     = 20
}
