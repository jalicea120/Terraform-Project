provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "myRDS" {
    db_name = "myDB" # Name of DB (Eg. Customer, Employee, etc)
    identifier = "my-first-rds" # Unique name for DB Instance (eg. Prod, Dev, etc)
    instance_class = "db.t2.micro"
    engine = "mariadb" # DB Engine (Eg. MySQL, Postgres, etc)
    engine_version = "5.7"
    allocated_storage = 20 # Maximum 20GB for free tier
    storage_type = "gp2"
    username = "admin"
    password = "password123"
    port = 3306
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true # When you go and delete it, it won't ask for the final Snapshot

}