# AWS SSH, EC2, S3, NSG

This module provisions SSH Key Pair, AWS S3 bucket, Network Security Group and EC2 Instance

## Usage

Add you public key to .ssh folder then add your region, your AWS Access Key & Secret Key and session token into the variable.tf file 

    module "aws-s3-ec2-nsg-ssh" {
        source          = "./modules/aws-s3-ec2-nsg-ssh"
        bucket_name     = "ENTER YOUR BUCKET NAME HERE"
    }
