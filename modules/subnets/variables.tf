## Custom Variables

variable "publicsubnet_vpcid" {
  type = string
}

variable "publicsubnet_cidr_block" {
  type = string
}

variable "publicsubnet_tags" {
  type = any
}

variable "privatesubnet_vpcid" {
  type = string
}

variable "privatesubnet_cidr_block" {
  type = string
}

variable "privatesubnet_tags" {
  type = any
}