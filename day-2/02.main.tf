# resource "aws_instance" "myinstance1" {
#   ami           = "ami-066c4849e6b3a1e3d"
#   instance_type = "t3.micro"
# }
# resource "aws_instance" "myinstance2" {
#   ami           = "ami-066c4849e6b3a1e3d"
#   instance_type = "t3.micro"
# }

# resource "aws_instance" "myinstance3" {
#   ami           = "ami-066c4849e6b3a1e3d"
#   instance_type = "t3.micro"
# }

# resource "aws_instance" "myinstance4" {
#   ami           = "ami-066c4849e6b3a1e3d"
#   instance_type = "t3.micro"
# }

resource "aws_instance" "myinstance" {
count = 3
ami = "ami-066c4849e6b3a1e3d"
instance_type = "t3.micro"
}
