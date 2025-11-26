terraform {
  backend "s3" {
    bucket         = "noufa-terraform-state-12345"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
