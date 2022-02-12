variable "image_id" {
  type        = string
  description = "ami"
}

variable "subnet_id" {
  type        = string
  description = "subnet_id"
}

variable "vpc_sg" {
  type        = string
  description = "vpc_secuirty_group"
}

variable "key_file" {
  type        = string
  description = "pem_key"
}

variable "instance" {
  type        = string
  description = "instance_type"
}

variable "monitor" {
  type        = string
  description = "monitoring enabled true or false"
}
# not working
#variable "bucket" {
#  type        = set(string)
#  description = "bucket names"
#  default     = []
#}

variable "bucket" {
  type        = list(string)
  description = "bucket names"
  default     = []
}
