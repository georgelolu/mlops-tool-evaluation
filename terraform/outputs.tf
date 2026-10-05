output "instance_id" {
  value = aws_instance.mlops.id
}

output "public_ip" {
  value = aws_instance.mlops.public_ip
}

output "mlflow_url" {
  value = "http://${aws_instance.mlops.public_ip}:5000"
}

output "prefect_url" {
  value = "http://${aws_instance.mlops.public_ip}:4200"
}

output "s3_bucket" {
  value = aws_s3_bucket.mlops.bucket
}
