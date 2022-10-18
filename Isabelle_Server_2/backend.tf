terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-753146964827"
    key            = "peering-group-project/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}