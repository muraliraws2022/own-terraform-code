variable "region" {}

variable "instancetype" {
  type = map
  default = {
  dev = "t2.micro"
  prod = "t3.micro"
  }
}


variable "ami" {
  type = map
  default = {
  us-east-1 = "ami-0533f2ba8a1995cf9"
  ap-south-1 = "ami-068d43a544160b7ef"
  }
}

