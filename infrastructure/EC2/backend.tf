terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-407372460187"
    key            = "group-challenge/ec2-1/terraform.tfstates"
    dynamodb_table = "terraform-lock"
    region         = "eu-central-1"
  }
}