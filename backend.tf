terraform {
  backend "s3" {
    bucket         = "terraform_statewest_lock1012101211"
    key            = "demo/cluster/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_remote_lock"
    encrypt        = true
  }
}