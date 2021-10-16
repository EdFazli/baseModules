module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"
  
  for_each = var.sg

  name                      = each.value.name
  description               = each.value.description
  ingress_with_cidr_blocks  = each.value.ingress_with_cidr_blocks
  egress_with_cidr_blocks   = each.value.egress_with_cidr_blocks

  tags                      = each.value.tags
}
