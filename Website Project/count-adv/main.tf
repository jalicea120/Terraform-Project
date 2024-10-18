provider "aws" {
  region = "us-east-1"
}

module "DB" {
  source = "./db"
  server_names = ["mariadb","mysql","oracledb"]
}

#Taking the output from db.tf's "Private_IP"
output "Private_IPs" {
    value = module.DB.Private_IP
}