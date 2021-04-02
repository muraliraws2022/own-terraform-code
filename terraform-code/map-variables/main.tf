provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "Demo-server" {
  ami           = "ami-071bd7e25f08c14a6"
  instance_type = var.instancetype["prod"]
  tags = {
    Name = "ExampleInstance"
  }
}

