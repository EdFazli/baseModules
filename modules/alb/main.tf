module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "6.5.0"
  
  for_each = var.alb

  name               = lookup(alb.value, "alb_name", null)

  load_balancer_type = "application"

  vpc_id             = lookup(alb.value, "alb_vpcid", default)
  subnets            = lookup(alb.value, "alb_subnetsid", null)
  security_groups    = lookup(alb.value, "alb_sgid", null)

  access_logs        = lookup(alb.value, "alb_access_logs", null)

  target_groups      = lookup(alb.value, "alb_target_groups", null)

  https_listeners    = lookup(alb.value, "alb_https_listeners", null)

  http_tcp_listeners = lookup(alb.value, "alb_http_tcp_listeners", null)

  tags               = lookup(alb.value, "alb_tags", null)
}

module "nlb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  for_each = var.nlb

  name               = lookup(nlb.value, "nlb_name", null)

  load_balancer_type = "network"

  vpc_id             = lookup(nlb.value, "nlb_vpcid", default)
  subnets            = lookup(nlb.value, "nlb_subnetsid", null)

  access_logs        = lookup(nlb.value, "nlb_access_logs", null)

  target_groups      = lookup(nlb.value, "nlb_target_groups", null)

  https_listeners    = lookup(nlb.value, "nlb_https_listeners", null)

  http_tcp_listeners = lookup(nlb.value, "nlb_http_tcp_listeners", null)

  tags               = lookup(nlb.value, "nlb_tags", null)
}