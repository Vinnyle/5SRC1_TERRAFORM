ble "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_access_key" {
  type    = string
  default = "my_access_key"
}

variable "aws_secret_key" {
  type    = string
  default = "my_secret_key"
}

variable "aws_token" {
  type    = string
  default = "my_token"
}

variable "key_name" {
  type    = string
  default = "ssh_key"
}

variable "bucket_name" {
  type    = string
  default = "s3-bucket"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "instance_name" {
  type    = string
  default = "ec2_instance"
}
