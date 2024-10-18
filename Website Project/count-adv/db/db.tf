variable "server_names" {
    type = list(string)
}

# Creation of EC2 Instance for Database Server
resource "aws_instance" "dbServer" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    count = length(var.server_names)
    tags = {
        Name = var.server_names[count.index]
    }
}

#Output of Private IP of Database Server
output "Private_IP" {
    value = [aws_instance.dbServer.*.private_ip]
}