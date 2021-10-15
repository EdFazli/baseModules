module "rds-aurora" {
  source  = "terraform-aws-modules/rds-aurora/aws"
  version = "5.2.0"
  
  for_each = var.aurora

  name                                = lookup(aurora.value, "aurora_name", null)
  engine                              = lookup(aurora.value, "aurora_engine", null)
  engine_version                      = lookup(aurora.value, "aurora_engine_version", null)
  instance_type                       = lookup(aurora.value, "aurora_instance_type", null)
  username                            = lookup(aurora.value, "aurora_username", null)
  password                            = lookup(aurora.value, "aurora_password", null)
  port                                = lookup(aurora.value, "aurora_port", null)
  publicly_accessible                 = lookup(aurora.value, "aurora_publicly_accessible", null)
  backup_retention_period             = lookup(aurora.value, "aurora_backup_retention_period", null)
  copy_tags_to_snapshot               = lookup(aurora.value, "aurora_copy_tags_to_snapshot", null)
  auto_minor_version_upgrade          = lookup(aurora.value, "aurora_auto_minor_version_upgrade", null)
  deletion_protection                 = lookup(aurora.value, "aurora_deletion_protection", null)

  vpc_id                              = lookup(aurora.value, "aurora_vpcid", null)
  subnets                             = lookup(aurora.value, "aurora_subnets", null)

  replica_count                       = lookup(aurora.value, "aurora_replica_count", null)

  create_security_group               = false
  vpc_security_group_ids              = lookup(aurora.value, "aurora_vpc_security_group_ids", null)
  allowed_cidr_blocks                 = lookup(aurora.value, "aurora_vpccidr", null)

  storage_encrypted                   = lookup(aurora.value, "aurora_storage_encrypted", null)
  apply_immediately                   = lookup(aurora.value, "aurora_apply_immediately", null)
  monitoring_interval                 = lookup(aurora.value, "aurora_monitoring_interval", null)
  iam_role_name                       = lookup(aurora.value, "aurora_iam_role_name", null)
  iam_database_authentication_enabled = lookup(aurora.value, "aurora_iam_database_authentication_enabled", null)

  db_parameter_group_name             = lookup(aurora.value, "aurora_db_parameter_group_name", null)
  db_cluster_parameter_group_name     = lookup(aurora.value, "aurora_db_cluster_parameter_group_name", null)

  enabled_cloudwatch_logs_exports     = lookup(aurora.value, "aurora_enabled_cloudwatch_logs_exports", null)
  performance_insights_enabled        = lookup(aurora.value, "aurora_performance_insights_enabled", null)

  tags                                = lookup(aurora.value, "aurora_tags", null)

}