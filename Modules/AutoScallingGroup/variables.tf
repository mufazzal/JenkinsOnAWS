variable "namePrefix" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "asgName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "min_size" {
  description = "Name to be used on all the resources as identifier"
  type        = number
  default     = 0
}

variable "max_size" {
  description = "Name to be used on all the resources as identifier"
  type        = number
  default     = 0
}

variable "desired_capacity" {
  description = "Name to be used on all the resources as identifier"
  type        = number
  default     = 0
}

variable "hostingSubnets" {
  description = "Name to be used on all the resources as identifier"
  type        = list(string)
  default     = []
}

variable "health_check_type" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "launch_template_id" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "launch_template_version" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "userDataScriptSucceedASGHookName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = null
}

variable "albTargetGroupName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = null
}
variable "exposedEC2WebServerPort" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}
variable "ec2WebServerHealthCheckPath" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}
variable "vpc_id" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "launchedEC2Name" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}