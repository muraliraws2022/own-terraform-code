resource "aws_instance" "web-server" {
  ami           = var.ami
  instance_type = var.hardware
  key_name      = var.keyname
  tags = {
    Name = "This server by terraform code"
  }
}
