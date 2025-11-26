variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID where EKS will be deployed"
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnets for EKS"
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "Public subnets (optional)"
  default     = []
}

variable "desired_capacity" {
  type        = number
  description = "Node group desired size"
  default     = 2
}

variable "min_size" {
  type        = number
  description = "Node group min size"
  default     = 1
}

variable "max_size" {
  type        = number
  description = "Node group max size"
  default     = 3
}

variable "instance_types" {
  type        = list(string)
  description = "EC2 instance types for node group"
  default     = ["t3.medium"]
}
