## Custom Variables

#---alb---#
variable "alb_name" {
  type = string
}

variable "alb_vpcid" {
  type = string
}

variable "alb_subnetsid" {
  type = any
}

variable "alb_sgid" {
  type = any
}

variable "alb_access_logs" {
  type = any
  default = {
      bucket = "${var.alb_name}-LOGS"
      enabled = false
  }
}

variable "alb_target_groups" {
  type = any
}

variable "alb_https_listeners" {
  type = any
}

variable "alb_http_tcp_listeners" {
  type = any
}

variable "alb_tags" {
  type = any
}


#---nlb---#
variable "nlb_name" {
  type = string
}

variable "nlb_vpcid" {
  type = string
}

variable "nlb_subnetsid" {
  type = any
}

variable "nlb_access_logs" {
  type = any
  default = {
      bucket = "${var.nlb_name}-LOGS"
      enabled = false
  }
}

variable "nlb_target_groups" {
  type = any
}

variable "nlb_https_listeners" {
  type = any
}

variable "nlb_http_tcp_listeners" {
  type = any
}

variable "nlb_tags" {
  type = any
}