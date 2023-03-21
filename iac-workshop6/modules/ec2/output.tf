output "ec2_public_ipv4_address" {
  value       = aws_instance.main_ec2.public_ip
  description = "Public IPv4 address"
}
