## Custom Variables

variable "vpc_name" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type = any
}

variable "private_subnets" {
  type = any
}
variable "public_subnets" {
  type = any
}

variable "enable_nat_gateway" {
  type = bool
}

variable "enable_vpn_gateway" {
  type = bool
}

variable "one_nat_gateway_per_az" {
  type = bool
}

variable "enable_flow_log" {
  type = bool
}

variable "vpc_tags" {
  type = any
}