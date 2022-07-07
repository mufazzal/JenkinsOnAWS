variable "namePrefix" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "taskRoleName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "execRoleName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "clusterName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "EC2HostedserviceName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "capacity_providers" {
  description = "Name to be used on all the resources as identifier"
  type        = list(string)
  default     = []
}

variable "desired_count" {
  description = "Name to be used on all the resources as identifier"
  type        = number
  default     = 0
}

variable "ecs_ec2_capacityProvider" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "ecsContainerSGName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "sg_ingress_rules" {
    type        = map
    default     = {}
}

variable "sg_egress_rules" {
    type        = map
    default     = {}
}

variable "taskFaimilyName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "container_definitions_json_file" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = null
}


variable "ec2_cap_provider_name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = null
}


variable "vpc_id" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = null
}

variable "hostingSubnets" {
  description = "Name to be used on all the resources as identifier"
  type        = list(string)
  default     = []
}
