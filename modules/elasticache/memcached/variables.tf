## Custom Variables

variable "memcached_namespace" {
  type = string
}

variable "memcached_stage" {
  type = string
}

variable "memcached_name" {
  type = string
}

variable "memcached_availability_zones" {
  type = any
}

variable "memcached_vpc_id" {
  type = string
}

variable "memcached_subnets" {
  type = any
}

variable "memcached_cluster_size" {
  type = number
}

variable "memcached_instance_type" {
  type = string
}

variable "memcached_engine_version" {
  type = string
}

variable "memcached_zone_id" {
  type = string
}

variable "memcached_security_group_rules" {
  type = any
}