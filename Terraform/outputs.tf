output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = module.ec2.public_ip
}

output "log_bucket_id" {
  description = "Access logs bucket name"
  value       = module.access_logs_bucket.bucket_id
}

output "data_bucket_id" {
  description = "Data bucket name"
  value       = module.data_bucket.data_bucket_id
}