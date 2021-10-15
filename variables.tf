variable "environment" {
  description = "App Environment"
  type        = string
  default     = "development"
}

variable "vpc_id" {
  description = "VPC Id"
  type        = string
  default     = null
}

variable "subnets" {
  description = "Subnet IDs"
  type = list(string)
  default = []
}

variable "security_groups" {
  description = "Security Groups"
  type = list(string)
  default = []
}
