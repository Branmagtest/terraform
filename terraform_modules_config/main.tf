module "ec2" {
  source = "./modules/ec2/"

  image_id  = "ami-033b95fb8079dc481"
  instance  = "t2.micro"
  key_file  = "kiiz"
  monitor   = "true"
  subnet_id = "subnet-0a367de6354ef0904"
  vpc_sg    = "sg-09b9b9f6fe9b1edbc"
}

module "s3" {
  source = "./modules/s3"
  bucket = var.bucket
}

#image_id = "ami-033b95fb8079dc481"

#subnet_id = "subnet-0a367de6354ef0904"

#vpc_sg = "sg-09b9b9f6fe9b1edbc"

#key_file = "kiiz"

#instance = "t2.micro"

#monitor = "true"

#bucket = "bucchit"
