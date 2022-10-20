resource "aws_s3_object" "upload_ip" {
  bucket = "public-ip-addresses-pimrn"
  key    = "server_1.txt"
  source = "${path.module}/ip_address_1.txt"
  acl = "public-read-write"

  depends_on = [local_file.public_ip_file]
}