variable "instancetype" {
  type = map
  default = {
  dev = "t2.micro"
  prod = "t3.micro"
  }
}

