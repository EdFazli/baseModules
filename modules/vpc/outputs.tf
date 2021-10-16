output "vpc_id" {
  description = "The ID of the VPC"
  value       = mmodule.vpc[*].aws_vpc.this[*].id
}