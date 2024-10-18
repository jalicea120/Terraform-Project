terraform {
  backend "s3" {
    bucket = "my-terraform-bucket-1995"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}