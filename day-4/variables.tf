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
