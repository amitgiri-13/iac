output "data_bucket_id" {
  description = "Data bucket id"
  value = aws_s3_bucket.secure_data.id
}