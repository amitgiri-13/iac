variable "myvpc_name" {
  type        = string
  description = "Name of the VPC"
  default     = "TaskVPC"
}

variable "access_logs_bucket_name" {
  type        = string
  description = "Access logs bucket name"
  default     = "task-access-logs-bucket-terraform-adex"
}

variable "secure_data_bucket_name" {
  type        = string
  description = "Secure Data bucket name"
  default     = "task-secure-data-bucket-terraform-adex"
}
