module "subnet_tagging" {
  source = "./resource"

  vpc_id     = var.subnet_vpcid
  cidr_block = var.subnet_cidr_block

  tags       = var.subnet_tags
}