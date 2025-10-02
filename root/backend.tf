terraform {
  backend "s3" {
    bucket = "tf-backend"
    key = "backend/prod.tfstate"
    region = "us-east-1"
    dynamodb_table = "remote-backend"
  }
}