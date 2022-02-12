resource "aws_instance" "terraform-ec2" {
  ami           = var.image_id
  instance_type = var.instance
  key_name      = var.key_file
  monitoring    = var.monitor
  subnet_id     = var.subnet_id
  vpc_security_group_ids = [
    var.vpc_sg
  ]

  tags = {
    Name = "terraform-ec2"
  }
}

resource "aws_s3_bucket" "bucchit" {
  bucket = var.bucket
  acl    = "private"
}
