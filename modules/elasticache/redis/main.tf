module "redis" {
  source  = "github.com/terraform-community-modules/tf_aws_elasticache_redis.git?ref=v2.2.0"

  for_each = var.redis

  env                            = lookup(redis.value, "redis_env", null)
  name                           = lookup(redis.value, "redis_name", null)
  redis_version                  = lookup(redis.value, "redis_version", null)
  redis_port                     = lookup(redis.value, "redis_port", null)
  redis_node_type                = lookup(redis.value, "redis_node_type", null)
  auto_minor_version_upgrade     = lookup(redis.value, "redis_auto_minor_version_upgrade", null)
  availability_zones             = lookup(redis.value, "redis_azs", null)
  multi_az_enabled               = lookup(redis.value, "redis_multi_az_enabled", null)
  at_rest_encryption_enabled     = lookup(redis.value, "redis_at_rest_encryption_enabled", null)
  transit_encryption_enabled     = lookup(redis.value, "redis_transit_encryption_enabled", null)
  apply_immediately              = lookup(redis.value, "redis_apply_immediately", null)
  redis_clusters                 = lookup(redis.value, "redis_clusters", null)
  redis_failover                 = lookup(redis.value, "redis_failover", null)
  redis_maintenance_window       = lookup(redis.value, "redis_maintenance_window", null)
  subnets                        = lookup(redis.value, "redis_subnets", null)
  vpc_id                         = lookup(redis.value, "redis_vpc_id", null)
  allowed_security_groups        = lookup(redis.value, "redis_allowed_security_groups", null)
  redis_snapshot_retention_limit = lookup(redis.value, "redis_snapshot_retention_limit", null)
  redis_parameters               = lookup(redis.value, "redis_parameters", null)

}