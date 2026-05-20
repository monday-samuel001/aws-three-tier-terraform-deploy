terraform {
  backend "s3" {
    bucket = "pod14-terraform-state-123"
    key    = "pod14/prodution/terraform.tfstate"
    region = "us-east-1"
  }
}