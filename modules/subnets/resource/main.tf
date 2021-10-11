resource "aws_subnet" "this" {
  vpc_id     = var.vpcid
  cidr_block = var.cidr_block

  tags       = var.tags
}