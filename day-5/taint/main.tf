provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myinstance" {
  ami           = "ami-066c4849e6b3a1e3d"
  instance_type = "t3.micro"
  tags = {
    Name = "taint-server-example"
  }
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = "test-bkt-30sep2026-prince"
}