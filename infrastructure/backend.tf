terraform {
  backend "s3" {
    bucket         = "talent-academy-terraform-tfstates-787786425565"
    key            = "sprint1/projects/group2_increment_nr_on_ec2/terraform.tfstates"
    dynamodb_table = "terraform-lock"
    region         = "eu-central-1"
  }
}