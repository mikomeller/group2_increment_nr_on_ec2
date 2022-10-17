variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnet_name" {
  description = "Name of my Public Subnet 1"
  type        = string
}

variable "ubuntu_ami_name" {
  description = "The name of the AMI"
  type        = string
}

variable "ubuntu_ami_owner" {
  description = "The owner ID of the AMI"
  type        = string
}

variable "instance_ec2_type" {
  description = "The type of the EC2 instance for movie app"
  type        = string
}

variable "keypair_name" {
  description = "The keypair"
  type        = string
}

variable "ec2_name" {
  description = "The name of the EC2 instance"
  type        = string
}

variable "sg_name" {
  description = "The name of the EC2 instance"
  type        = string
}
