module "public_subnet" {
  source = "./resource"

  vpc_id     = var.publicsubnet_vpcid
  cidr_block = var.publicsubnet_cidr_block

  tags       = var.publicsubnet_tags
}

module "private_subnet" {
  source = "./resource"

  vpc_id     = var.privatesubnet_vpcid
  cidr_block = var.privatesubnet_cidr_block

  tags       = var.privatesubnet_tags
}