#Remote Backend Configuration
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "sli-hashicorp-learn"

    workspaces {
      name = "udemy_terraform"
    }
  }
}
#Provider Configuration
provider "aws" {
    region = "us-east-1"
    access_key = var.access_key
    secret_key = var.secret_key
}
#S3 Bucket Configuration
#Remove s3 bucket to test terraform destroy from cloud