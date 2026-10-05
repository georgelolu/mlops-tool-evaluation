variable "aws_region" {
  description = "AWS deployment region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "mlops-tools-evaluation"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "allowed_cidr" {
  description = "CIDR allowed to access MLflow and Prefect"
  type        = string
}

variable "repository_url" {
  description = "GitHub repository URL"
  type        = string
}
