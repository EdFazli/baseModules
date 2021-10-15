## Custom Variables

variable "redis" {
  type = any
}

variable "redis_env" {
  type = string
}

variable "redis_name" {
  type = string
}

variable "redis_version" {
  type = string
}

variable "redis_port" {
  type = number
}

variable "redis_node_type" {
  type = string
}

variable "redis_auto_minor_version_upgrade" {
  type = bool
}

variable "redis_azs" {
  type = any
}

variable "redis_multi_az_enabled" {
  type = bool
}

variable "redis_at_rest_encryption_enabled" {
  type = bool
}

variable "redis_transit_encryption_enabled" {
  type = bool
}

variable "redis_apply_immediately" {
  type = bool
}

variable "redis_clusters" {
  type = any
}

variable "redis_failover" {
  type = any
}

variable "redis_maintenance_window" {
  type = string
}

variable "redis_subnets" {
  type = any
}

variable "redis_vpc_id" {
  type = string
}

variable "redis_allowed_security_groups" {
  type = any
}

variable "redis_snapshot_retention_limit" {
  type = number
}

variable "redis_parameters" {
  type = any
}