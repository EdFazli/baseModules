data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "${var.backend_vpc_bucket}"
    key    = "${var.backend_vpc_key}"
    region = "${var.backend_vpc_region}"
  }
}

module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "4.3.0"
  
  for_each = var.sg

  name                      = each.value.name
  description               = each.value.description
  vpc_id                    = "${data.terraform_remote_state.vpc.vpc_id}"

  ingress_with_cidr_blocks  = each.value.ingress_with_cidr_blocks
  egress_with_cidr_blocks   = each.value.egress_with_cidr_blocks

  tags                      = each.value.tags
}
