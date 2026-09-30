locals {
  project_name   = "Prince-DevOps"
  environment    = "Practice"
  instance_count = 3
}

resource "aws_instance" "myinstance" {
  ami           = "ami-066c4849e6b3a1e3d"
  instance_type = "t3.micro"
  count         = local.instance_count

  tags = {
    Name        = "${local.project_name}-${local.environment}-${count.index + 1}"
    Environment = local.environment
  }
}

output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = aws_instance.myinstance[*].id
}