terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

variable "instance_count" {
  description = "*"
  type        = number
  default     = 3
}

variable "instance_ami" {

  description = "*"
  type        = string
  default     = "ami-066c4849e6b3a1e3d"
}

variable "instance_type" {

  description = "*"
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {

  description = "*"
  type        = string
  default     = "Prince-TF-Server"
}

resource "aws_instance" "myinstance" {
  count         = var.instance_count
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags = {
    Name = var.instance_name
  }

}

