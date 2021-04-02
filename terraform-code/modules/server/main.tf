resource "aws_instance" "Demo-server" {
  ami           = lookup(var.ami, var.region)
  instance_type = var.instancetype["prod"]
  tags = {
    Name = "ExampleInstance"
  }
}

