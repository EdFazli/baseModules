## Custom Variables

variable "vgw_vpcid" {
  type = string
}

variable "vgw_vpn_gateway_id" {
  type = string
}

variable "vgw_customer_gateway_id" {
  type = string
}

variable "vgw_vpc_subnet_route_table_ids" {
  type = any
}