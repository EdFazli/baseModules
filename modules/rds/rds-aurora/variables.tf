## Custom Variables

variable "aurora_name" {
  type = string
}

variable "aurora_engine" {
  type = string
}

variable "aurora_engine_version" {
  type = string
}

variable "aurora_instance_type" {
  type = string
}

variable "aurora_username" {
  type = string
  sensitive = true
}

variable "aurora_password" {
  type = string
  sensitive = true
}

variable "aurora_port" {
  type = string
}

variable "aurora_publicly_accessible" {
  type = bool
}

variable "aurora_backup_retention_period" {
  type = number
}

variable "aurora_copy_tags_to_snapshot" {
  type = bool
}

variable "aurora_auto_minor_version_upgrade" {
  type = bool
}

variable "aurora_deletion_protection" {
  type = bool
}

variable "aurora_vpcid" {
  type = string
}

variable "aurora_subnets" {
  type = list(string)
}

variable "aurora_replica_count" {
  type = number
}

variable "aurora_vpc_security_group_ids" {
  type = list(string)
}

variable "aurora_vpccidr" {
  type = list(string)
}

variable "aurora_storage_encrypted" {
  type = bool
}

variable "aurora_apply_immediately" {
  type = bool
}

variable "aurora_monitoring_interval" {
  type = number
}

variable "aurora_iam_role_name" {
  type = string
}

variable "aurora_iam_database_authentication_enabled" {
  type = bool
}

variable "aurora_db_parameter_group_name" {
  type = string
}

variable "aurora_db_cluster_parameter_group_name" {
  type = string
}

variable "aurora_enabled_cloudwatch_logs_exports" {
  type = list(string)
}

variable "aurora_performance_insights_enabled" {
  type = bool
}

variable "aurora_tags" {
  type = any
}