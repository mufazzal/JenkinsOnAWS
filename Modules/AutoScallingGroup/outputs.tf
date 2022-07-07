output "asg_arn" {
  description = "ID of the VPC"
  value       = aws_autoscaling_group.autoscallingGroup.arn
}

output "asg_id" {
  description = "ID of the VPC"
  value       = aws_autoscaling_group.autoscallingGroup.id
}

output "albTargetGroup_arn" {
  description = "ID of the VPC"
  value       = length(aws_alb_target_group.albTargetGroup) > 0 ? aws_alb_target_group.albTargetGroup[0].arn : null
}

output "albTargetGroup_id" {
  description = "ID of the VPC"
  value       = length(aws_alb_target_group.albTargetGroup ) > 0 ? aws_alb_target_group.albTargetGroup[0].id : null
}