output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.aws_vpc.*.vpc_id
}