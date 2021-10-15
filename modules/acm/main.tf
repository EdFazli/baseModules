module "acm" {
  source  = "terraform-aws-modules/acm/aws"
  version = "3.2.0"

  for_each = var.acm

  domain_name  = lookup(acm.value, "acm_domain_name", null)

  subject_alternative_names = lookup(acm.value, "acm_alternative_names", null)

  wait_for_validation = false

  tags = lookup(acm.value, "acm_tags", null)
}