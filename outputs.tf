output "key_pair_name" {
  value = aws_key_pair.ssh_keys.key_name
}

output "security_group_id" {
  value = aws_security_group.nsg01.id
}

output "bucket_name" {
  value = aws_s3_bucket.s3_bucket.id
}

output "instance_id" {
  value = aws_instance.ec2_instance.id
}

output "instance_public_ip" {
  value = aws_instance.ec2_instance
}
