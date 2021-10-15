## Custom Variables

variable "efs_namespace" {
  type = string
}

variable "efs_stage" {
  type = string
}

variable "efs_name" {
  type = string
}

variable "efs_region" {
  type = string
}

variable "efs_vpc_id" {
  type = string
}

variable "efs_subnets" {
  type = any
}

variable "efs_security_groups" {
  type = any
}

variable "efs_zone_id" {
  type = string
}