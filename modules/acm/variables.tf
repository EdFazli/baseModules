## Custom Variables

variable "acm" {
  type = any
}

variable "acm_domain_name" {
  type = string
}

variable "acm_alternative_names" {
  type = any
  default = [
      "*.${var.acm_domain_name}",
  ]
}

variable "acm_tags" {
  type = any
  default = {
      Name = "${var.acm_domain_name}"
  }
}