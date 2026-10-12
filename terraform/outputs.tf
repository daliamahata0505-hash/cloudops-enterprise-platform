
output "aws_account_id" {
  description = "AWS account ID used by Terraform"
  value       = data.aws_caller_identity.current.account_id
}

output "aws_arn" {
  description = "AWS identity used by Terraform"
  value       = data.aws_caller_identity.current.arn
}

output "aws_region" {
  description = "AWS region used by Terraform"
  value       = data.aws_region.current.region
}

output "cloudops_instance_id" {
  description = "Existing CloudOps EC2 instance ID"
  value       = data.aws_instance.cloudops.id
}

output "cloudops_instance_public_ip" {
  description = "Public IP of the existing CloudOps EC2 instance"
  value       = data.aws_instance.cloudops.public_ip
}

output "cloudops_instance_type" {
  description = "Instance type of the existing CloudOps EC2 instance"
  value       = data.aws_instance.cloudops.instance_type
}

output "cloudops_instance_state" {
  description = "Current state of the existing CloudOps EC2 instance"
  value       = data.aws_instance.cloudops.instance_state
}
