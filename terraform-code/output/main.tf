provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Demo-server" {
  ami           = "ami-071bd7e25f08c14a6"
  instance_type = "t2.micro"
  tags = {
    Name = "ExampleInstance"
  }
}

output "public-ip" {
  value = "${aws_instance.Demo-server.public_ip}"
}

output "private-ip" {
  value = "${aws_instance.Demo-server.private_ip}"
}

output "instance_state" {
  value = "${aws_instance.Demo-server.instance_state}"
}

