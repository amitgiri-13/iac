terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.1.0"
    }
  }
  required_version = ">= 1.2"
}

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source   = "./module/vpc"
  vpc_name = var.myvpc_name
}

module "ec2" {
  source            = "./module/ec2"
  security_group_id = module.vpc.security_group_id
  subnet_id         = module.vpc.subnet_id
}

module "access_logs_bucket" {
  source                  = "./module/s3_log"
  access_logs_bucket_name = var.access_logs_bucket_name
}

module "data_bucket" {
  source                  = "./module/s3_data"
  secure_data_bucket_name = var.secure_data_bucket_name
  access_logs_bucket_name = module.access_logs_bucket.bucket_id
}
