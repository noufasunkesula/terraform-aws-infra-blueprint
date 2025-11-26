variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "subnet_cidrs" {
  type = map(list(string))
  default = {
    public  = ["10.0.1.0/24", "10.0.2.0/24"]
    private = ["10.0.3.0/24", "10.0.4.0/24"]
  }
}

variable "cluster_name" {
  type    = string
  default = "dev-eks"
}

variable "db_name" {
  type    = string
  default = "devdb"
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
  default = "dev-search"
}

variable "s3_bucket_name" {
  type    = string
  default = "dev-app-bucket-noufa"
}

variable "alb_name" {
  type    = string
  default = "dev-alb"
}

variable "ecs_cluster_name" {
  type    = string
  default = "dev-ecs"
}

variable "ecs_service_name" {
  type    = string
  default = "dev-service"
}

variable "ecs_image" {
  type    = string
  default = "nginx:latest"
}
