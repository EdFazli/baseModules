module "vpc" {
  source  = "./resources"
  
  for_each = var.vpc

  name                   = each.value.name
  cidr                   = each.value.cidr

  azs                    = each.value.azs
  private_subnets        = each.value.private_subnets
  private_subnets_name   = each.value.private_subnets_name
  public_subnets         = each.value.public_subnets
  public_subnets_name    = each.value.public_subnets_name

  enable_nat_gateway     = each.value.enable_nat_gateway
  one_nat_gateway_per_az = each.value.one_nat_gateway_per_az
  enable_vpn_gateway     = each.value.enable_vpn_gateway
  customer_gateways      = each.value.customer_gateways
  enable_flow_log        = each.value.enable_flow_log

  tags                   = var.each.value.tags

}

