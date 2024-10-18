# Cloud Provider
provider "aws" {
  region = "us-east-1"
}

#Create Instance Module from ec2.tf for Web Server
module "web" {
    source = "./web"
}

#Create Instance Module from db.tf for Database Server
module "db" {
    source = "./db"
}

output "public_ip" {
    value = module.web.Public_IP
}

output "private_ip" {
    value = module.db.Private_IP
}