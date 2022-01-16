terraform {
        backend "s3" {
                bucket = "jan2022demo"
                key    = "state-file-status/ec2terraform.tfstate"
                region = "ap-south-1"
        }
}

resource "aws_instance" "web-server" {
  ami           = "ami-0d6ba217f554f6137"
  instance_type = "t3.micro"
  key_name      = "demo"
  tags = {
    Name = "This server by manual"
  }
} 

output "public-ip" {
  value = "${aws_instance.web-server.public_ip}"
}

