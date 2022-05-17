resource "aws_instance" "web-server" {
  ami           = "ami-0d6ba217f554f6137"
  instance_type = "t3.micro"
  key_name      = "demo"
  tags = {
    Name = "This server by manual"
  }
} 

