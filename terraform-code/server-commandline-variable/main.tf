resource "aws_instance" "web-server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = var.hardware
  key_name      = var.keyname
  vpc_security_group_ids = ["sg-04e22ffb653c9b648"]
  tags = {
    Name = "This server by terraform code"
  }
}
