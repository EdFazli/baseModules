module "vpc" {
  source  = "./resources"
  
  name                   = var.vpc_name
  cidr                   = var.vpc_cidr

  azs                    = var.azs
  private_subnets        = var.private_subnets
  private_subnets_name   = var.private_subnets_name
  public_subnets         = var.public_subnets
  public_subnets_name    = var.public_subnets_name

  enable_nat_gateway     = var.enable_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  enable_vpn_gateway     = var.enable_vpn_gateway
  enable_flow_log        = var.enable_flow_log

  tags                   = var.vpc_tags

}

