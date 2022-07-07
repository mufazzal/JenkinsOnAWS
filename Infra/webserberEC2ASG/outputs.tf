output "asg_arn" {
  description = "ID of the VPC"
  value       = module.webServerEC2ASG.asg_arn
}

output "asg_id" {
  description = "ID of the VPC"
  value       = module.webServerEC2ASG.asg_id
}


output "albTargetGroup_arn" {
  description = "ID of the VPC"
  value       = module.webServerEC2ASG.albTargetGroup_arn
}


