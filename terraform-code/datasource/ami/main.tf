provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "web" {
  owners = ["self"]
  filter {
    name   = "state"
    values = ["available"]
  }

  filter {
    name   = "tag:app"
    values = ["jenkins"]
  }

  most_recent = true
}


output "ami-id" {
  value = "${data.aws_ami.web.id}"
}

