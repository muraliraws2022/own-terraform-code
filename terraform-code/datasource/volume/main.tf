provider "aws" {
  region = "us-east-1"
}

data "aws_ebs_volume" "ebs_volume" {
#  most_recent = true

  filter {
    name   = "volume-type"
    values = ["gp2"]
  }

  filter {
    name   = "tag:Name"
    values = ["Example"]
  }
}

output "volume-id" {
  value = "${data.aws_ebs_volume.ebs_volume.id}"
}

output "volume-arn" {
  value = "${data.aws_ebs_volume.ebs_volume.arn}"
}


