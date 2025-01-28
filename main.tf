
provider "aws" {
  region = "us-east-1"
  access_key = var.aws_access_key_id
  secret_key = var.aws_secret_access_key
}


module "terrahouce_aws" {
  source = "/workspace/terraform-beginner-bootcamp-2023/module/terrahouce_aws "
  bucket_name = var.bucket_name
  index_html_filepath = var.index_html_filepath
  error_html_filepath = var.error_html_filepath
}