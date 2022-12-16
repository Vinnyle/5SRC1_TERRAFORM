# AWS SSH, EC2, S3, NSG

This module provisions SSH Key Pair, AWS S3 bucket, Network Security Group and EC2 Instance

## Usage

Add you public key to .ssh folder then add your region, your AWS Access Key & Secret Key and session token into the variable.tf file :

    variable "aws_region" {
      description = "Default region of aws instance"
      type        = string
      default     = "*YOUR REGION*"
    }

    variable "aws_secret_key" {
      description = "Account secret Key"
      type        = string
      default     = "*YOUR AWS ACCOUNT SECRET KEY*"
    }

    variable "aws_access_key" {
      description = "Account access Key"
      type        = string
      default     = "*YOUR AWS ACCOUNT ACCESS KEY*"
    }

    variable "aws_token" {
      description = "Account token session"
      type        = string
      default     = "*YOUR AWS SESSION TOKEN*"
    }
    
Then use the module like this :

    module "aws-s3-ec2-nsg-ssh" {
        source          = "./modules/aws-s3-ec2-nsg-ssh"
        bucket_name     = "*ENTER YOUR BUCKET NAME HERE*"
    }
