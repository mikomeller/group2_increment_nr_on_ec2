# resource "aws_s3_bucket" "group_bucket" {
#   bucket = "public-ip-addresses-pimrn"

#   tags = {
#     Name        = "group-bucket"
#   }
# }

# resource "aws_s3_bucket_acl" "group_bucket_acl" {
#   bucket = aws_s3_bucket.group_bucket.id
#   acl    = "public-read-write"
# }

resource "aws_s3_object" "upload_ip" {
  bucket = "public-ip-addresses-pimrn"
  key    = "server_1.txt"
  source = "${path.module}/ip_address_1.txt"
  acl = "public-read-write"

  depends_on = [local_file.public_ip_file]
}