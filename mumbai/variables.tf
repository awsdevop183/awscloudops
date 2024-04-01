
variable "vpc-cidr" {
  description = "description of variable"
}

variable "subnet" {
  type        = map
  description = "A map of all the subnets in use for all AWS regions"
  default = {}
}
variable "dev-vpc-cidr" {
  description = "description of variable"
}

variable "dev-subnet" {
  type        = map
  description = "A map of all the subnets in use for all AWS regions"
  default = {}
}