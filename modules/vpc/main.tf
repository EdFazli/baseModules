module "vpc" {
  source  = "./resources"
  
  for_each = var.vpc

  name                   = each.value.name
  cidr                   = each.value.cidr

  azs                    = lookup(each.value, "azs", null)
  private_subnets        = each.value.private_subnets
  private_subnets_name   = each.value.private_subnets_name
  public_subnets         = each.value.public_subnets
  public_subnets_name    = each.value.public_subnets_name

  enable_nat_gateway     = lookup(each.value, "enable_nat_gateway", null)
  one_nat_gateway_per_az = lookup(each.value, "one_nat_gateway_per_az", null)
  enable_vpn_gateway     = lookup(each.value, "enable_vpn_gateway", null)
  customer_gateways      = lookup(each.value, "customer_gateways", null)
  enable_flow_log        = lookup(each.value, "enable_flow_log", null)

  tags                   = lookup(each.value, "tags", null)

}

