terraform {
  backend "s3" {
    bucket = "s3-super-mario12092025"      # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "us-east-1"
  }
}
