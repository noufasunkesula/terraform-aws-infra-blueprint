variable "vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "subnet_cidrs" {
  type = map(list(string))
  default = {
    public  = ["10.1.1.0/24", "10.1.2.0/24"]
    private = ["10.1.3.0/24", "10.1.4.0/24"]
  }
}

variable "cluster_name" {
  type    = string
  default = "prod-eks"
}

variable "db_name" {
  type    = string
  default = "proddb"
}

variable "db_username" {
  type    = string
  default = "admin"
}

variable "db_password" {
  type      = string
  sensitive = true
}

variable "opensearch_domain" {
  type    = string
  default = "prod-search"
}

variable "s3_bucket_name" {
  type    = string
  default = "prod-app-bucket-noufa"
}

variable "alb_name" {
  type    = string
  default = "prod-alb"
}

variable "certificate_arn" {
  type    = string
  default = ""
}

variable "ecs_cluster_name" {
  type    = string
  default = "prod-ecs"
}

variable "ecs_service_name" {
  type    = string
  default = "prod-service"
}

variable "ecs_image" {
  type    = string
  default = "nginx:latest"
}
