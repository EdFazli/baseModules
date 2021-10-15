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

  name                      = lookup(sg.value, "${var.sg_name}", null)
  description               = lookup(sg.value, "${var.sg_description}", null)
  vpc_id                    = "${data.terraform_remote_state.vpc.vpc_id}"

  ingress_with_cidr_blocks  = lookup(sg.value, "${var.sg_ingress_with_cidr_blocks}", null)
  egress_with_cidr_blocks   = lookup(sg.value, "${var.sg_egress_with_cidr_blocks}", null)

  tags                      = lookup(sg.value, "${var.sg_tags}", null)
}
