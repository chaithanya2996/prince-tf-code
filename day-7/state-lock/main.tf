provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {

    bucket         = "my-bkt1-23092026"
    key            = "prince-1/terraform.tfstate"
    encrypt        = true
    region         = "ap-south-1"
    use_lockfile = true
  }
}
resource "aws_instance" "myfirstinstance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
#   tags = {
#     Name = "backend-example1"
#   }
}
