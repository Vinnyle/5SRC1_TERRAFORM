module "aws-s3-ec2-nsg-ssh" {
    source = "./modules/aws-s3-ec2-nsg-ssh"
    bucket_name       = "3s-tp-esgi-kjourdan"
}