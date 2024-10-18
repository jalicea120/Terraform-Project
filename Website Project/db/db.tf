# Creation of EC2 Instance for Database Server
resource "aws_instance" "dbServer" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    tags = {
        Name = "DB Server"
    }
}

#Output of Private IP of Database Server
output "Private_IP" {
    value = aws_instance.dbServer.private_ip
}