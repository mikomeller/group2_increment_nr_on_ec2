output "public_ip" {
  value = aws_instance.group_2_instance.public_ip
}

#terraform output | awk -F '"' '{print $2}' > public_ip_address.txt