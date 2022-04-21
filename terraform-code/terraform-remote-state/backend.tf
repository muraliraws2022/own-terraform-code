terraform {
  required_version = ">= 0.11.0"
  backend "s3" {
    bucket = "testingbucket873"
    key    = "myterraform/terraform.state"
    region = "us-east-1"
  }
}
