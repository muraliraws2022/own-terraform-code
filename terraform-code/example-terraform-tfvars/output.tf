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
