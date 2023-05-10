provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "web-server" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  key_name      = "night"
  tags = {
    Name = "This server by manual"
  }
} 
