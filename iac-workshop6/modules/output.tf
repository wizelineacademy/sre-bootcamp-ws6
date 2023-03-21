output "ec2_public_ipv4_address" {
  value       = module.ec2.ec2_public_ipv4_address
  description = "Public IPv4 address"
}


output "sg_id" {
  value       = module.sg.sg_id
  description = "Security Group id."
}
