variable "key_name" {
  description = "Name of SSH Key"
  type        = string
  default     = "my_ssh_key"
}
variable "aws_sg_name" {

  description = "Name of security group"
  type        = string
  default     = "nsg01"
}

variable "bucket_name" {
  description = "name of the S3 Bucket"
  type        = string
}

variable "aws_instance_type" {

  description = "Type of EC2 instance "
  type        = string
  default     = "t2.micro"
}

variable "aws_instance_name" {

  description = "AWS instance Name"
  type        = string
}
