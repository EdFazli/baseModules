output "vpc_id" {
  description = "The ID of the VPC"
  value       = concat(module.vpc[*].output.vpc_id, [""])[0]
}