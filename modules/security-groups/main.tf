module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"
  
  name                      = var.sg_name
  description               = var.sg_description
  vpc_id                    = var.sg_vpcid

  ingress_with_cidr_blocks  = var.sg_ingress_with_cidr_blocks
  egress_with_cidr_blocks   = var.sg_egress_with_cidr_blocks

  tags                      = var.sg_tags
}
