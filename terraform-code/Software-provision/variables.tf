variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "ap-south-1"
}
variable "private_key_path" {
  default = "terraform.pem"
}

variable "ami_id" {
  type = "map"
  default = {
    us-east-1    = "ami-035b3c7efe6d061d5"
    eu-west-2    = "ami-132b3c7efe6sdfdsfd"
    eu-central-1 = "ami-9787h5h6nsn"
    ap-south-1   = "ami-0a23ccb2cdd9286bb"
  }
}
