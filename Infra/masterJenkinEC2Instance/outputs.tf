output "public_dns" {
  description = "ID of the VPC"
  value       = aws_instance.Jenkin_Master.public_dns
}

output "id" {
  description = "ID of the VPC"
  value       = aws_instance.Jenkin_Master.id
}

output "public_ip" {
  description = "ID of the VPC"
  value       = aws_instance.Jenkin_Master.public_ip
}