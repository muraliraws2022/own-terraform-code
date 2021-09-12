resource "aws_instance" "web-server" {
  ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
  key_name      = "saro-arun"
  tags = {
    Name = "This server by jenkins"
  }
} 

output "public-ip" {
  value = "${aws_instance.web-server.public_ip}"
}

output "private-ip" {
  value = "${aws_instance.web-server.private_ip}"
}

output "instance_state" {
  value = "${aws_instance.web-server.instance_state}"
}


output "Public-DNS" {
  value = "${aws_instance.web-server.public_dns}"
}


output "myserver-arn" {
  value = "${aws_instance.web-server.arn}"
}

