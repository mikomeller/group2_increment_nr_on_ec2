variable "app_ec2_type" {
  description = "type of ec2 I'm using"
  type        = string
}

variable "aws_ubuntu_name" {
  description = "myAmi"
  type        = string
}

variable "aws_ami_owner" {
  description = "Contains the Owner ID of the ami for amazon linux"
  type        = string
}

variable "keypair_name" {
  description = "our keypair"
  type= string
}
