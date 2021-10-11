module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "6.5.0"
  
  name               = var.alb_name

  load_balancer_type = "application"

  vpc_id             = var.alb_vpcid
  subnets            = var.alb_subnetsid
  security_groups    = var.alb_sgid

  access_logs        = var.alb_access_logs

  target_groups      = var.alb_target_groups

  https_listeners    = var.alb_https_listeners

  http_tcp_listeners = var.alb_http_tcp_listeners

  tags               = var.alb_tags
}

module "nlb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name               = var.nlb_name

  load_balancer_type = "network"

  vpc_id             = var.nlb_vpcid
  subnets            = var.nlb_subnetsid

  access_logs        = var.nlb_access_logs

  target_groups      = var.nlb_target_groups

  https_listeners    = var.nlb_https_listeners

  http_tcp_listeners = var.nlb_http_tcp_listeners

  tags               = var.nlb_tags
}