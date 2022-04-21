provider "aws" {
#       access_key = "${var.access_key}"
#       secret_key = "${var.secret_key}"
        region = "${var.region}"
}

#module
module "networkModule" {
  source = "./module/network"
}


#resources
/* resource "aws_key_pair" "ec2key" {
  key_name = "publicKey"
  public_key = "${file(var.public_key_path)}"
} */

resource "aws_instance" "testInstance" {
  ami           = "${var.instance_ami}"
  instance_type = "${var.instance_type}"
  subnet_id = "${module.networkModule.public_subnet_id}"
  vpc_security_group_ids = ["${module.networkModule.sg_22_id}"]
 # key_name = "${aws_key_pair.ec2key.key_name}"
  key_name      = "anbu-saro-mumbai"
    provisioner "file" {
    source      = "index.html"
    destination = "/tmp/index.html"
  }
  provisioner "remote-exec" {
      inline = [
        "sudo yum install -y httpd;sudo cp /tmp/index.html /var/www/html/",
        "sudo service httpd restart",
        "sudo service httpd status"
      ]
    }
  connection {
    user        = "ec2-user"
    #private_key = "${file("${file(var.public_key_path)}")}"
    private_key = "${file("${var.private_key_path}")}"
    host = "${aws_instance.testInstance.public_ip}"
  }

  tags = {
    "Environment" = "${var.environment_tag}"
        }
}
