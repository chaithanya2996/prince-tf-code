resource "aws_instance" "myinstance" {
  ami           = "ami-066c4849e6b3a1e3d"
  instance_type = "t3.micro"
}
