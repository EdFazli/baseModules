module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "3.2.0"

  domain_name  = var.acm_domain_name

  subject_alternative_names = var.acm_alternative_names

  wait_for_validation = false

  tags = var.acm_tags
}