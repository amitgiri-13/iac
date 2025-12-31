variable "vpc_name" {
  type = string
  description = "Name of the VPC"
  default = "TaskVPC"
}

variable "igw_name" {
  type = string
  description = "Name of InternetGateway"
  default = "TaskIGW"
}

variable "public_subnet_name" {
    type = string
    description = "Name of subnet"
    default = "TaskSubnet"
}

variable "public_route_table_name" {
    type = string
    description = "Name of Route Table"
    default = "TaskRouteTable"
}

variable "security_group_name" {
    type = string
    description = "Name of Security group"
    default = "TaskSecurityGroup"
}

variable "instance_type" {
    type = string
    description = "Type of ec2 instance"
    default = "t3.micro"

    validation {
        condition = contains(["t2.micro", "t3.micro"], var.instance_type)
        error_message = "Instance Type must be t2.micro or t3.micro"
    }
}

variable "keypair" {
  type = string
  description = "Key Pair for EC2"
  default = "cfkey"
}

variable "volume_type" {
    type = string
    description = "EBS volume type"
    default = "gp2"

    validation {
      condition = contains(["gp2", "gp3"], var.volume_type)
      error_message = "Volume type must be gp2 or gp3"   
      }
}

variable "volume_size" {
    type = number
    description = "EBS volume size"
    default = 20
}

variable "delete_on_termination" {
    type = bool
    description = "Delete on termination for EBS volume"
    default = true
}

variable "instance_name" {
  type = string
  description = "Name of ec2"
  default = "TaskEC2"
}

variable "access_logs_bucket_name" {
  type = string
  description = "Access logs bucket name"
  default = "task-access-logs-bucket-terraform-adex"
}

variable "secure_data_bucket_name" {
  type = string
  description = "Secure Data bucket name"
  default = "task-secure-data-bucket-terraform-adex"
}