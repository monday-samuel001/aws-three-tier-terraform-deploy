terraform {
  backend "s3" {
    bucket = "samuel-terraform-state-123"
    key    = "dev/terraform.tfstate"
    region = "us-east-1"
  }
}