#### Variables####
variable "ehamiha_access_key" {
  description = "aws access key"
}

variable "ehamiha_secret_key" {
  description = "secret access key"
}

variable "private_key_path" {
  description = "path to where the private key file is placed"
}

variable "key_name" {
  default = "terraform"
}
#### Use AWS as the cloud provider ####
provider "aws" {
  region = us-east-1
  access_key = var.ehamiha_access_key
  secret_key = var.ehamiha_secret_key
}

#### Pull data from AWS ####
data "aws_availability_zones" "available" {
  
}

#### AWS resources ####
resource "aws_instance" "tf-nginx" {
  ami = "ami-c58c1dd3"
  instance_type = "t2.micro"
  key_name = var.key_name
  connection {
    user = "ec2-user"
    private_key = var.
  }
}