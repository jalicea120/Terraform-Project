#Creation of Security Group

resource "aws_security_group" "sgWebServ" {
    name = "sgWebServ"
    description = "Allow HTTP, and HTTPS traffic"
    tags = {
        Name = "sgWebServ"
    } 

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

#Output of Name of Security Group
output "sgWebServ" {
    value = aws_security_group.sgWebServ.name
}