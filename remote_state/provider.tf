terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "> 6.0.0"
    }
  }
  backend "s3" {
    bucket = "remote-state-daws99s"
    region = "us-east-1"
    encrypt = true 
    key = "remote_state.tfstate"
    use_lockfile = true 
  }

}

# configure the aws provider

provider "aws" {
  region = "us-east-1"
}

