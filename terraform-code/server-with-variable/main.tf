resource "aws_instance" "web-server" {
  ami           = "ami-0742b4e673072066f"
  instance_type = "t2.micro"
  key_name      = "vignesh-saro"
} 
