module "rds-aurora" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "5.2.0"
  
  name                                = var.aurora_name
  engine                              = var.aurora_engine
  engine_version                      = var.aurora_engine_version
  instance_type                       = var.aurora_instance_type
  username                            = var.aurora_username
  password                            = var.aurora_password
  port                                = var.aurora_port
  publicly_accessible                 = var.aurora_publicly_accessible
  backup_retention_period             = var.aurora_backup_retention_period
  copy_tags_to_snapshot               = var.aurora_copy_tags_to_snapshot
  auto_minor_version_upgrade          = var.aurora_auto_minor_version_upgrade
  deletion_protection                 = var.aurora_deletion_protection

  vpc_id                              = var.aurora_vpcid
  subnets                             = var.aurora_subnets

  replica_count                       = var.aurora_replica_count

  create_security_group               = false
  vpc_security_group_ids              = var.aurora_vpc_security_group_ids
  allowed_cidr_blocks                 = var.aurora_vpccidr

  storage_encrypted                   = var.aurora_storage_encrypted
  apply_immediately                   = var.aurora_apply_immediately
  monitoring_interval                 = var.aurora_monitoring_interval
  iam_role_name                       = var.aurora_iam_role_name
  iam_database_authentication_enabled = var.aurora_iam_database_authentication_enabled

  db_parameter_group_name             = var.aurora_db_parameter_group_name
  db_cluster_parameter_group_name     = var.aurora_db_cluster_parameter_group_name

  enabled_cloudwatch_logs_exports     = var.aurora_enabled_cloudwatch_logs_exports
  performance_insights_enabled        = var.aurora_performance_insights_enabled 

  tags                                = var.aurora_tags

}