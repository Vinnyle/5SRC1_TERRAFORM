resource "aws_key_pair" "ssh_keys" {
  key_name   = var.key_name
  public_key = file("~/.ssh/id_rsa.pub")
}

resource "aws_security_group" "nsg01" {
  name        = "${var.key_name}_security_group"
  description = "Security group for example EC2 instance"

  ingress {
    description = "allow ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids =  []
    security_groups =  []
    self = true

  }

  egress {
    description = "allow ssh"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = []
    prefix_list_ids =  []
    security_groups =  []
    self = true

  }
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  versioning {
    enabled = true
  }
}

resource "aws_instance" "ec2_instance" {
  ami                  = data.aws_ami.ec2_instance.id
  instance_type        = "t2.micro"
  tags = {
    description = "Terraform Generated Instance"
  }
}