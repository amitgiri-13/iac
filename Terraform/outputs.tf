output "data_bucket" {
  description = "Secure primary S3 bucket"
  value       = aws_s3_bucket.secure_data.id
}

output "logs_bucket" {
  description = "S3 bucket storing access logs"
  value       = aws_s3_bucket.access_logs.id
}

output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.lab_ec2.public_ip
}