## Custom Variables

variable "public_subnets" {
  type = list(string)
}

variable "public_subnets_name" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "private_subnets_name" {
  type = list(string)
}

variable "azs" {
  type = list(string)
}

variable "vpc_id" {
  type = list(string)
}