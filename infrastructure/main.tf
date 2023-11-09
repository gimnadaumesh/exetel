# Configure terraform backend with S3 
terraform {
  backend "s3" {
    bucket         = "exetel-terraform"
    key            = "exetel/terraform.tfstate"
    region         = "ap-southeast-2"
}
}
