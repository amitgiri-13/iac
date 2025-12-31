output "bucket_id" {
  description = "Log bucket id"
  value = aws_s3_bucket.access_logs.id
}