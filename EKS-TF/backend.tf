terraform {
  backend "s3" {
    bucket = "s3-supermario-bucket86"      # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
