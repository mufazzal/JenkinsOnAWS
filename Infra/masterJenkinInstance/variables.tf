# variable "allowed_account_ids" {
#   description = "List of allowed AWS account ids where resources can be created"
#   type        = list(string)
#   default     = []
# }

variable "rst" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "rst1"
}

variable "env" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "jic_namePrefix" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "jic_sgName" {
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

variable "jic_iamRoleName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

# variable "jic_ssm_of_ami_name" {
#   description = "Name to be used on all the resources as identifier"
#   type        = string
#   default     = ""
# }

# variable "jic_defaultAMIId" {
#   description = "Name to be used on all the resources as identifier"
#   type        = string
#   default     = ""
# }


variable "jic_launchTemplateName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "jic_instanceType" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "jic_sshKeyName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}
variable "jic_userDataFileName" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "albSG" {
  description = "Name to be used on all the resources as identifier"
  type        = string
}

# variable "ASGEC2Name" {
#   description = "Name to be used on all the resources as identifier"
#   type        = string
#   default     = ""
# }
