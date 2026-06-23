resource "aws_instance" "wordpress" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type
  subnet_id     = "subnet-" # Custom subnet id

  associate_public_ip_address = true

  user_data = file("userdata.sh")

  vpc_security_group_ids = [
    aws_security_group.wordpress.id
  ]

  tags = {
    Name = "wordpress-server"
  }

}

data "aws_vpc" "existing" {
  id = "vpc-" #Custom VPC id
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}
