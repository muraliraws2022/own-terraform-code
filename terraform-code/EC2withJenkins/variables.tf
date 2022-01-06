variable "region" {
  type    = "string"
  default = "ap-south-1"
}
variable "ami_id" {
  type = "map"
  default = {
    us-east-1    = "ami-052cef05d01020f1d"
  }
}
variable "instance_type" {
  type    = "string"
  default = "t2.micro"
}
variable "key_name" {
  type    = "string"
  default = "anbu-saro-mumbai"
}
