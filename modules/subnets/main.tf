module "subnets" {
  source = "./resource"

  vpc_id               = module.vpc.output.vpc_id

  public_subnets_name  = var.public_subnets_name
  public_subnets       = var.public_subnets

  private_subnets_name = var.private_subnets_name
  private_subnets      = var.private_subnets

  azs                  = var.azs
}
