resource "aws_instance" "cloud" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = var.instance_type
  subnet_id                   = "subnet-073228a7e078136e0"
  key_name                    = var.key_name
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.cloud.id]
  user_data                   = file("${path.module}/userdata/cloud-init.yaml")

  tags = {
    Name = "cloud_init"
  }

}


data "aws_vpc" "existing" {
  id = "vpc-08d0694016bb47ad6"
}

data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-*-x86_64"]
  }
}
