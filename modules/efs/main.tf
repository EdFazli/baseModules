module "efs" {
  source  = "cloudposse/efs/aws"
  version = "0.31.1"
  
  for_each = var.efs

  namespace       = lookup(efs.value, "efs_namespace", null)
  stage           = lookup(efs.value, "efs_stage", null)
  name            = lookup(efs.value, "efs_name", null)
  region          = lookup(efs.value, "efs_region", null)
  vpc_id          = lookup(efs.value, "efs_vpc_id", null)
  subnets         = lookup(efs.value, "efs_subnets", null)
  security_groups = lookup(efs.value, "efs_security_groups", null)
  zone_id         = lookup(efs.value, "efs_zone_id", null)

}