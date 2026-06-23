variable "instance_type" {
  default = "t3.micro"
}

variable "aws_region" {
  default = "eu-west-2"
}

variable "key_name" {
  description = "EC2 key pair"
}
