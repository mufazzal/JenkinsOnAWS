# variable "allowed_account_ids" {
#   description = "List of allowed AWS account ids where resources can be created"
#   type        = list(string)
#   default     = []
# }

variable "subnet_id" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "rst1"
}
