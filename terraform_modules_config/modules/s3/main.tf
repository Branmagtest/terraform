resource "aws_s3_bucket" "bucchit" {
  count = length(var.bucket)
  bucket = var.bucket[count.index]
}


# not working
#resource "aws_s3_bucket" "bucchit" {
#  for_each = {for m in var.bucket : m}
#  bucket = each.value
#}
