## Custom Variables

variable "rds" {
  type = any
}

variable "rds_identifier" {
  type = string
}

variable "rds_engine" {
  type = string
}

variable "rds_engine_version" {
  type = string
}

variable "rds_instance_class" {
  type = string
}

variable "rds_storage_type" {
  type = string
}

variable "rds_storage_encrypted" {
  type = bool
}

variable "rds_allocated_storage" {
  type = string
}

variable "rds_max_allocated_storage" {
  type = string
}

variable "rds_multi_az" {
  type = string
}

variable "rds_availability_zone" {
  type = string
}

variable "rds_timezone" {
  type = string
}

variable "rds_auto_minor_version_upgrade" {
  type = bool
}

variable "rds_vpc_security_group_ids" {
  type = list(string)
}

variable "rds_name" {
  type = string
}

variable "rds_username" {
  type = string
  sensitive = true
}

variable "rds_password" {
  type = string
  sensitive = true
}

variable "rds_port" {
  type = string
}

variable "rds_iam_database_authentication_enabled" {
  type = bool
}

variable "rds_enabled_cloudwatch_logs_exports" {
  type = list(string)
}

variable "rds_maintenance_window" {
  type = string
}

variable "rds_backup_window" {
  type = string
}

variable "rds_backup_retention_period" {
  type = number
}

variable "rds_copy_tags_to_snapshot" {
  type = bool
}

variable "rds_delete_automated_backups" {
  type = bool
}

variable "rds_performance_insights_enabled" {
  type = bool
}

variable "rds_performance_insights_retention_period" {
  type = number
}

variable "rds_monitoring_interval" {
  type = number
}

variable "rds_monitoring_role_name" {
  type = string
}

variable "rds_create_monitoring_role" {
  type = bool
}

variable "rds_create_db_subnet_group" {
  type = bool
}

variable "rds_db_subnet_group_name" {
  type = string
}

variable "rds_db_subnet_group_description" {
  type = string
}

variable "rds_subnet_ids" {
  type = list(string)
}

variable "rds_family" {
  type = string
}

variable "rds_parameters" {
  type = any
}

variable "rds_create_db_option_group" {
  type = bool
}

variable "rds_major_engine_version" {
  type = string
}

variable "rds_option_group_name" {
  type = string
}

variable "rds_option_group_description" {
  type = string
}

variable "rds_options" {
  type = any
}

variable "rds_deletion_protection" {
  type = bool
}

variable "rds_tags" {
  type = any
}