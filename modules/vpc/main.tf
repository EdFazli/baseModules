module "vpc" {
  source  = "./resources"
  
  name                   = var.vpc_name
  cidr                   = var.vpc_cidr

  azs                    = var.vpc_azs
  private_subnets        = var.vpc_private_subnets
  private_subnets_name   = var.vpc_private_subnets_name
  public_subnets         = var.vpc_public_subnets
  public_subnets_name    = var.vpc_public_subnets_name

  enable_nat_gateway     = var.vpc_enable_nat_gateway
  one_nat_gateway_per_az = var.vpc_one_nat_gateway_per_az
  enable_vpn_gateway     = var.vpc_enable_vpn_gateway
  enable_flow_log        = var.vpc_enable_flow_log

  tags                   = var.vpc_tags

}

