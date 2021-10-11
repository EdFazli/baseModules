## Custom Variables

variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "sg_vpcid" {
  type = string
}

variable "sg_ingress_with_cidr_blocks" {
  type = any
}

variable "sg_egress_with_cidr_blocks" {
  type = any
}

variable "sg_tags" {
  type = any
}