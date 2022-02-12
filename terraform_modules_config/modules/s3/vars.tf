variable "bucket" {
 type        = list(string)
 description = "bucket names"
 default     = []
}
# not working
#variable "bucket" {
#  type        = set(string)
#  description = "bucket names"
#  default     = []
#}
