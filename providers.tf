
terraform {
#  required_version = "1.5.1"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# Using remote backend
terraform {
  backend "s3" {
    bucket = "my-backend-devops102-terraform"
    key    = "flaskappawsec2/tfstate"
    region = "us-east-1"
  }
}

