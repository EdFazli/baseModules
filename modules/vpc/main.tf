#terraform {
  # The configuration for this backend will be filled in by Terragrunt
#  backend "s3" {}
#}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.7.0"
  
  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  enable_vpn_gateway = var.enable_vpn_gateway
  enable_flow_log = var.enable_flow_log

  tags = var.vpc_tags

}

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
