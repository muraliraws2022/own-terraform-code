provider "aws" {
  region  = "${var.region}"
  version = "~> 2.0"
}

resource "aws_instance" "db1" {
  ami = "ami-0801a1e12f4a9ccc0"
  instance_type = "t2.micro"
root_block_device {
  volume_type = "gp2"
  volume_size = "15"
  delete_on_termination = "true"
}
tags = {
  Name = "TEST"
}

}
