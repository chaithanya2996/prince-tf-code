provider "aws" {
  region = "ap-south-1"
}

# terraform {
#   backend "s3" {
#     bucket = "my-bkt1-23092026"
#     key = "prince/terraform.tfstate"
#     region = "ap-south-1"
#   }
# }

resource "aws_s3_bucket" "mybuket1" {
  bucket = "my-tf-05oct2026-bkt1"
}
resource "aws_s3_bucket" "mybuket2" {
  bucket = "my-tf-05oct2026-bkt2"
}

resource "aws_s3_bucket" "mybuket3" {
  bucket = "prince-tf-bkt0510"
}