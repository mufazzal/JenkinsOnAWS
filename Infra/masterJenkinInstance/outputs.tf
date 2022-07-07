output "sg_id" {
  description = "ID of the VPC"
  value       = module.webServerInstanceConfig.sg_id
}

output "iamProfile_arn" {
  description = "ID of the VPC"
  value       = module.webServerInstanceConfig.iamProfile_arn
}

# output "ami_ssm_name" {
#   description = "ID of the VPC"
#   value       = module.webServerInstanceConfig.ami_ssm_name
#   sensitive = true
# }

output "launchTemplate_arn" {
  description = "ID of the VPC"
  value       = module.webServerInstanceConfig.launchTemplate_arn
}
output "launchTemplate_id" {
  description = "ID of the VPC"
  value       = module.webServerInstanceConfig.launchTemplate_id
}
output "launchTemplate_latest_version" {
  description = "ID of the VPC"
  value       = module.webServerInstanceConfig.launchTemplate_latest_version
}

