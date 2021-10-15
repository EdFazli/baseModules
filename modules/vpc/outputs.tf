output "vpc_id" {
  description = "The ID of the VPC"
  value       = concat(module.vpc[*].id, [""])[0]
}