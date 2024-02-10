terraform {
  backend "s3" {
    bucket         = "terraform_state_lock10121"
    key            = "demo/cluster/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform_remote_lock"
    encrypt        = true
  }
}