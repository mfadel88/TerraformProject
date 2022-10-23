terraform {
  backend "s3" {
    bucket = "s33-terraform"
    key    = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table= "dynamodb-terraform"
  }
}