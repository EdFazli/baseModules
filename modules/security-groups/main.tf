module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"
  
  for_each = var.sg

  name                      = lookup(sg.value, "sg_name", null)
  description               = lookup(sg.value, "sg_description", null)
  vpc_id                    = lookup(sg.value, "sg_vpcid", default)

  ingress_with_cidr_blocks  = lookup(sg.value, "sg_ingress_with_cidr_blocks", null)
  egress_with_cidr_blocks   = lookup(sg.value, "sg_egress_with_cidr_blocks", null)

  tags                      = lookup(sg.value, "sg_tags", null)
}
