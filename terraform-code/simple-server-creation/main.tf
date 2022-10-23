resource "aws_instance" "web-server" {
  ami           = "ami-0d6ba217f554f6137"
  instance_type = "t2.micro"
  key_name      = "night"
  tags = {
    Name = "This server by manual"
  }
} 

