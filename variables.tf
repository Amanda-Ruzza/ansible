# DEFINING ALL VARIABLES
variable "aws_owner_id" {
  description = "Contains the Owner ID of the ami for amazon Linux"
  type        = string
}

variable "aws_ami_name" {
  description = "Name os the ami I want for the project"
  type        = string
}

variable "vpc_name" {
  description = "Name of the vpc for my project"
  type        = string
}

variable "ec2_type" {
  description = "Type of my EC2 instance"
  type        = string
  default     = "t2.small"
}

variable "public_subnet_name" {
  type = string
}


variable "my_keypair" {
  default = "aws_keypair"
}
