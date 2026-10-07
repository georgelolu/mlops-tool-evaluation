# ------------------------------------------------------------
# MLOps Artifact Storage
# ------------------------------------------------------------

resource "aws_s3_bucket" "mlops" {
  bucket_prefix = "mlops-tools-evaluation-"

  tags = {
    Name    = "mlops-tools-evaluation-artifacts"
    Project = "mlops-tools-evaluation"
  }
}

# ------------------------------------------------------------
# S3 Versioning
# ------------------------------------------------------------

resource "aws_s3_bucket_versioning" "mlops" {
  bucket = aws_s3_bucket.mlops.id

  versioning_configuration {
    status = "Enabled"
  }
}

# ------------------------------------------------------------
# S3 Server-Side Encryption
# ------------------------------------------------------------

resource "aws_s3_bucket_server_side_encryption_configuration" "mlops" {
  bucket = aws_s3_bucket.mlops.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# ------------------------------------------------------------
# Block Public Access
# ------------------------------------------------------------

resource "aws_s3_bucket_public_access_block" "mlops" {
  bucket = aws_s3_bucket.mlops.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
