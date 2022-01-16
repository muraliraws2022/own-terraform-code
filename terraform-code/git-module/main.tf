# Demostration of pass agruments in module using variable
module "terraform-module" {
  source = "github.com/saravananajay/terraform-modules-ec2.git"
    ami_id                     = "${var.ami_id}"
    instance_type              = "${var.instance_type}"

}

