output "instance_id" {
  value = aws_instance.cloud.id
}

output "public_ip" {
  value = aws_instance.cloud.public_ip
}

output "public_dns" {
  value = aws_instance.cloud.public_dns
}

output "cloud_url" {
  value = "http://${aws_instance.cloud.public_ip}"
}
