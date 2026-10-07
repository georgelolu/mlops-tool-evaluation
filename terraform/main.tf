terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

# ------------------------------------------------------------
# Ubuntu 24.04 AMI
# ------------------------------------------------------------

data "aws_ssm_parameter" "ubuntu" {
  name = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
}

# ------------------------------------------------------------
# MLOps EC2 Instance
# ------------------------------------------------------------

resource "aws_instance" "mlops" {
  ami                         = data.aws_ssm_parameter.ubuntu.value
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.mlops.id]
  associate_public_ip_address = true
  iam_instance_profile        = aws_iam_instance_profile.ec2.name

  user_data = templatefile("${path.module}/user-data.sh", {
    repository_url = var.repository_url
    bucket_name    = aws_s3_bucket.mlops.bucket
  })

  tags = {
    Name    = "mlops-tools-evaluation-server"
    Project = "mlops-tools-evaluation"
  }

  # Prevent Terraform from replacing the existing EC2 instance
  # whenever Canonical publishes a newer Ubuntu AMI.
  lifecycle {
    ignore_changes = [
      ami,
    ]
  }
}
