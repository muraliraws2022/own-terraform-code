terraform {
  required_version = ">= 0.11.0"
  backend "s3" {
    bucket = "testingbucket873"
    key    = "finaldemo-18/karpagam"
    region = "us-east-1"
  }
}
