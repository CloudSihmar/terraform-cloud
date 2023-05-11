variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = ""
}


variable "vpc_name" {
  description = "VPC Name"
  type        = string
  default = ""
}

# VPC CIDR Block
variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type        = string
  default     = ""
}

# VPC Availability Zones
variable "vpc_availability_zones" {
  description = "VPC Availability Zones"
  type        = list(string)
  default     = [""]
}

# VPC Public Subnets
variable "vpc_public_subnets" {
  description = "VPC Public Subnets"
  type        = list(string)
  default     = [""]
}