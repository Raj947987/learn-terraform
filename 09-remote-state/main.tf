terraform {
  backend "s3" {
    bucket = "terraform-new-b73"
    key = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}
output "demo" {
  value = "Hello world"
}