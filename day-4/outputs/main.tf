provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myinstance" {
  ami           = "ami-066c4849e6b3a1e3d"
  instance_type = "t3.micro"
  tags = {
    Name = "outputvarexample-server"
  }
}

output "instance-information" {
  value = [aws_instance.myinstance.public_ip, aws_instance.myinstance.private_ip, aws_instance.myinstance.public_dns]

}
