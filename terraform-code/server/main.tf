resource "aws_instance" "Demo-server" {
  ami           = "ami-071bd7e25f08c14a6"
  instance_type = "t2.micro"

  tags = {
    Name = "Instancecreated-terraform"
  }
}


