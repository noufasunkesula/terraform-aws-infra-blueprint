terraform {
  backend "s3" {
    bucket         = "noufa-terraform-state-12345"
    key            = "dev/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source = "../../modules/vpc"

  vpc_cidr     = var.vpc_cidr
  subnet_cidrs = var.subnet_cidrs
}

module "eks" {
  source = "../../modules/eks"

  cluster_name        = var.cluster_name
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
  public_subnet_ids   = module.vpc.public_subnet_ids
}

module "rds" {
  source = "../../modules/rds"

  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  multi_az            = true
  vpc_id              = module.vpc.vpc_id
  private_subnet_ids  = module.vpc.private_subnet_ids
}

module "opensearch" {
  source = "../../modules/opensearch"

  domain_name        = var.opensearch_domain
  subnet_ids         = module.vpc.private_subnet_ids
  security_group_ids = [module.vpc.default_sg_id]
}

module "s3" {
  source = "../../modules/s3"

  bucket_name = var.s3_bucket_name
}

module "cloudwatch" {
  source = "../../modules/cloudwatch"

  log_group_name = "/app/prod"
}

module "alb" {
  source = "../../modules/alb"

  alb_name         = var.alb_name
  subnet_ids       = module.vpc.public_subnet_ids
  vpc_id           = module.vpc.vpc_id
  health_check_path = "/health"
  enable_https     = true
  certificate_arn  = var.certificate_arn
}

module "ecs" {
  source = "../../modules/ecs"

  cluster_name       = var.ecs_cluster_name
  service_name       = var.ecs_service_name
  container_image    = var.ecs_image
  subnet_ids         = module.vpc.private_subnet_ids
  security_group_ids = [module.vpc.default_sg_id]
  target_group_arn   = module.alb.target_group_arn
}

module "ssm" {
  source = "../../modules/ssm"

  secret_name  = "/prod/app/db_password"
  secret_value = var.db_password
}
