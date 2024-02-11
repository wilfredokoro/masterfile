terraform {
  backend "s3" {
    bucket         = "terraform-statewest-lock1012101211"
    key            = "demo/cluster/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_remote_lock"
    encrypt        = true
  }
}
