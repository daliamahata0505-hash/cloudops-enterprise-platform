
variable "aws_region" {
  description = "AWS region for the CloudOps project"
  type        = string
  default     = "ap-south-1"
}
variable "cloudops_instance_id" {
  description = "ID of the existing EC2 instance to inspect"
  type        = string
}