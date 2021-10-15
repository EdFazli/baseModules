module "elasticache-memcached" {
  source  = "cloudposse/elasticache-memcached/aws"
  version = "0.13.0"
  
  for_each = var.memcached

  namespace          = lookup(memcached.value, "memcached_namespace", null)
  stage              = lookup(memcached.value, "memcached_stage", null)
  name               = lookup(memcached.value, "memcached_name", null)
  availability_zones = lookup(memcached.value, "memcached_availability_zones", null)
  vpc_id             = lookup(memcached.value, "memcached_vpc_id", null)
  subnets            = lookup(memcached.value, "memcached_subnets", null)
  cluster_size       = lookup(memcached.value, "memcached_cluster_size", null)
  instance_type      = lookup(memcached.value, "memcached_instance_type", null)
  engine_version     = lookup(memcached.value, "memcached_engine_version", null)
  apply_immediately  = true
  zone_id            = lookup(memcached.value, "memcached_zone_id", null)

  security_group_rules = lookup(memcached.value, "memcached_security_group_rules", null)

}