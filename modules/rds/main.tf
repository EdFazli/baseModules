module "rds" {
  source  = "terraform-aws-modules/rds/aws"
  version = "3.4.0"
  
  identifier                            = var.rds_identifier

  engine                                = var.rds_engine
  engine_version                        = var.rds_engine_version
  instance_class                        = var.rds_instance_class
  storage_type                          = var.rds_storage_type
  storage_encrypted                     = var.rds_storage_encrypted
  allocated_storage                     = var.rds_allocated_storage
  max_allocated_storage                 = var.rds_max_allocated_storage
  multi_az                              = var.rds_multi_az
  availability_zone                     = var.rds_availability_zone
  timezone                              = var.rds_timezone
  auto_minor_version_upgrade            = var.rds_auto_minor_version_upgrade
  vpc_security_group_ids                = var.rds_vpc_security_group_ids
  name                                  = var.rds_name
  username                              = var.rds_username
  password                              = var.rds_password
  port                                  = var.rds_port

  iam_database_authentication_enabled   = var.rds_iam_database_authentication_enabled
  enabled_cloudwatch_logs_exports       = var.rds_enabled_cloudwatch_logs_exports

  maintenance_window                    = var.rds_maintenance_window
  backup_window                         = var.rds_backup_window
  backup_retention_period               = var.rds_backup_retention_period
  copy_tags_to_snapshots                = var.rds_copy_tags_to_snapshot
  delete_automated_backups              = var.rds_delete_automated_backups

  performance_insights_enabled          = var.rds_performance_insights_enabled
  performance_insights_retention_period = var.rds_performance_insights_retention_period

  # Enhanced Monitoring - see example for details on how to create the role
  # by yourself, in case you don't want to create it automatically
  monitoring_interval                   = var.rds_monitoring_interval
  monitoring_role_name                  = var.rds_monitoring_role_name
  create_monitoring_role                = var.rds_create_monitoring_role

  # DB subnet group
  create_db_subnet_group                = var.rds_create_db_subnet_group
  db_subnet_group_name                  = var.rds_db_subnet_group_name
  db_subnet_group_description           = var.rds_db_subnet_group_description
  subnet_ids                            = var.rds_subnet_ids

  # DB parameter group
  family                                = var.rds_family
  parameters                            = var.rds_parameters
  # DB option group
  create_db_option_group                = var.rds_create_db_option_group
  major_engine_version                  = var.rds_major_engine_version
  option_group_name                     = var.rds_option_group_name
  option_group_description              = var.rds_option_group_description
  options                               = var.rds_options

  # Database Deletion Protection
  deletion_protection                   = var.rds_deletion_protection

  tags                                  = var.rds_tags
  

}