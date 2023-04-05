
output "public-ip" {
  value = aws_instance.infra.public_ip
}