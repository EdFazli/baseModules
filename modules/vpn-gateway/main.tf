module "vpn-gateway" {
  source  = "terraform-aws-modules/vpn-gateway/aws"
  version = "2.11.0"
  
  vpc_id                                   = var.vgw_vpc_id
  vpn_gateway_id                           = var.vgw_vpn_gateway_id 
  customer_gateway_id                      = var.vgw_customer_gateway_id

  vpn_connection_static_routes_only        = true
  vpn_connection_static_routes_destination = ["10.0.0.0/16"]

  # precalculated length of module variable vpc_subnet_route_table_ids
  vpc_subnet_route_table_count             = 2
  vpc_subnet_route_table_ids               = var.vgw_vpc_subnet_route_table_ids

  tags                                     = var.vgw_tags
}