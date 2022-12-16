variable "aws_region" {
  description = "Default region of aws instance"
  type        = string
  default     = "us-east-1"

}

variable "aws_secret_key" {
  description = "Account secret Key"
  type        = string
  default     = ""
}


variable "aws_access_key" {

  description = "Account access Key"
  type        = string
  default     = ""
}

variable "aws_token" {

  description = "Account token session"
  type        = string
  default     = ""
}