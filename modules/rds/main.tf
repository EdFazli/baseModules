module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "3.4.0"
  
  for_each = var.rds

  identifier                            = lookup(rds.value, "rds_identifier", null)

  engine                                = lookup(rds.value, "rds_engine", null)
  engine_version                        = lookup(rds.value, "rds_engine_version", null)
  instance_class                        = lookup(rds.value, "rds_instance_class", null)
  storage_type                          = lookup(rds.value, "rds_storage_type", null)
  storage_encrypted                     = lookup(rds.value, "rds_storage_encrypted", null)
  allocated_storage                     = lookup(rds.value, "rds_allocated_storage", null)
  max_allocated_storage                 = lookup(rds.value, "rds_max_allocated_storage", null)
  multi_az                              = lookup(rds.value, "rds_multi_az", null)
  availability_zone                     = lookup(rds.value, "rds_availability_zone", null)
  timezone                              = lookup(rds.value, "rds_timezone", null)
  auto_minor_version_upgrade            = lookup(rds.value, "rds_auto_minor_version_upgrade", null)
  vpc_security_group_ids                = lookup(rds.value, "rds_vpc_security_group_ids", null)
  name                                  = lookup(rds.value, "rds_name", null)
  username                              = lookup(rds.value, "rds_username", null)
  password                              = lookup(rds.value, "rds_password", null)
  port                                  = lookup(rds.value, "rds_port", null)

  iam_database_authentication_enabled   = lookup(rds.value, "rds_iam_database_authentication_enabled", null)
  enabled_cloudwatch_logs_exports       = lookup(rds.value, "rds_enabled_cloudwatch_logs_exports", null)

  maintenance_window                    = lookup(rds.value, "rds_maintenance_window", null)
  backup_window                         = lookup(rds.value, "rds_backup_window", null)
  backup_retention_period               = lookup(rds.value, "rds_backup_retention_period", null)
  copy_tags_to_snapshots                = lookup(rds.value, "rds_copy_tags_to_snapshot", null)
  delete_automated_backups              = lookup(rds.value, "rds_delete_automated_backups", null)

  performance_insights_enabled          = lookup(rds.value, "rds_performance_insights_enabled", null)
  performance_insights_retention_period = lookup(rds.value, "rds_performance_insights_retention_period", null)

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  monitoring_interval                   = lookup(rds.value, "rds_monitoring_interval", null)
  monitoring_role_name                  = lookup(rds.value, "rds_monitoring_role_name", null)
  create_monitoring_role                = lookup(rds.value, "rds_create_monitoring_role", null)

  # DB subnet group
  create_db_subnet_group                = lookup(rds.value, "rds_create_db_subnet_group", null)
  db_subnet_group_name                  = lookup(rds.value, "rds_db_subnet_group_name", null)
  db_subnet_group_description           = lookup(rds.value, "rds_db_subnet_group_description", null)
  subnet_ids                            = lookup(rds.value, "rds_subnet_ids", null)

  # DB parameter group
  family                                = lookup(rds.value, "rds_family", null)
  parameters                            = lookup(rds.value, "rds_parameters", null)
  # DB option group
  create_db_option_group                = lookup(rds.value, "rds_create_db_option_group", null)
  major_engine_version                  = lookup(rds.value, "rds_major_engine_version", null)
  option_group_name                     = lookup(rds.value, "rds_option_group_name", null)
  option_group_description              = lookup(rds.value, "rds_option_group_description", null)
  options                               = lookup(rds.value, "rds_options", null)

  # Database Deletion Protection
  deletion_protection                   = lookup(rds.value, "rds_deletion_protection", null)

  tags                                  = lookup(rds.value, "rds_tags", null)
  

}