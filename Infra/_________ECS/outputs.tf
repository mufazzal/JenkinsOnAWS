output "container_sg_id" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.container_sg_id
}

output "container_sg_arn" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.container_sg_arn
}

output "taskRole_id" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.taskRole_id
}

output "taskRole_arn" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.taskRole_arn
}

output "execRole_id" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.execRole_id
}

output "execRole_arn" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.execRole_arn
}


output "ecsCluster_id" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.ecsCluster_id
}

output "ecsCluster_arn" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.ecsCluster_arn
}

output "ecsserviceEc2Hosted_id" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.ecsserviceEc2Hosted_id
}

output "ecsserviceEc2Hosted_name" {
  description = "ID of the VPC"
  value       = module.JenkinsSlaveECS.ecsserviceEc2Hosted_name
}