output "public_ip" {
  value = aws_instance.group_2_instance.public_ip
}

resource "local_file" "public_ip_file" {
    content  = aws_instance.group_2_instance.public_ip
    filename = "${path.module}/ip_address_1.txt"
}

#terraform output | awk -F '"' '{print $2}' > public_ip_address.txt