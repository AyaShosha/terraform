# backend.tf
terraform {
  backend "s3" {
    bucket         = "your-s3-bucket-name"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-1"  # Change this to your preferred AWS region
    dynamodb_table = "terraform-lock"
  }
}
