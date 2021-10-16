output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.name.vpc_id
}