## Custom Variables

variable "backend_vpc_bucket" {
  type = string
}

variable "backend_vpc_key" {
  type = string
}

variable "backend_vpc_region" {
  type = string
}

variable "sg" {
  type = any
}

variable "sg_name" {
  type = string
}

variable "sg_description" {
  type = string
}

variable "sg_vpc_id" {
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