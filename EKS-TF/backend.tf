terraform {
  backend "s3" {
    bucket = "terraform-backend-mario1279"      # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
