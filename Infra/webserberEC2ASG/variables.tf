# variable "allowed_account_ids" {
#   description = "List of allowed AWS account ids where resources can be created"
#   type        = list(string)
#   default     = []
# }

# variable "asgName" {yes
#   type        = string
#   default     = ""
# }

variable "ASGEC2Name" {
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

variable "subnets" {
  description = "Name to be used on all the resources as identifier"
  type        = list(string)
  default     = []
}
