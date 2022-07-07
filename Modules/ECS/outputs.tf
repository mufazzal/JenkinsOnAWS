output "container_sg_id" {
  description = "ID of the VPC"
  value       = aws_security_group.ecsContainerSG.id
}

output "container_sg_arn" {
  description = "ID of the VPC"
  value       = aws_security_group.ecsContainerSG.arn
}

output "taskRole_id" {
  description = "ID of the VPC"
  value       = aws_iam_role.iamTaskRole.id
}

output "taskRole_arn" {
  description = "ID of the VPC"
  value       = aws_iam_role.iamTaskRole.arn
}

output "execRole_id" {
  description = "ID of the VPC"
  value       = aws_iam_role.iamExecRole.id
}

output "execRole_arn" {
  description = "ID of the VPC"
  value       = aws_iam_role.iamExecRole.arn
}


output "ecsCluster_id" {
  description = "ID of the VPC"
  value       = aws_ecs_cluster.ECSCluster.id
}

output "ecsCluster_arn" {
  description = "ID of the VPC"
  value       = aws_ecs_cluster.ECSCluster.arn
}

output "ecsserviceEc2Hosted_id" {
  description = "ID of the VPC"
  value       = aws_ecs_service.ecsService.id
}

output "ecsserviceEc2Hosted_name" {
  description = "ID of the VPC"
  value       = aws_ecs_service.ecsService.name
}