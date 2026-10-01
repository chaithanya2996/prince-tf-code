
provider "aws" {
  region = "ap-south-1"
}

locals {
  instance_types = {
    dev   = "t3.micro"
    test  = "t4g.small"
    prod  = "t8i.small"
  }
}
resource "aws_instance" "workspace-example" {
  ami           = "ami-0011550b539717e2a"
  instance_type = local.instance_types[terraform.workspace]
  tags = {
    Name = "${terraform.workspace}-server"
  }
}

output "active_workspace" {
  description = "Current Terraform workspace"
  value       = terraform.workspace
}

output "selected_instance_type" {
  description = "Instance type selected for the current workspace"
  value       = local.instance_types[terraform.workspace]
}
