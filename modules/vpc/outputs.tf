output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.this.vpc_id
}