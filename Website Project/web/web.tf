#Create EC2 Instance for Website Server
resource "aws_instance" "webServer" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    security_groups = [module.sg.sgWebServ]
    user_data = file("./web/server-script.sh")
    tags = {
        Name = "Web Server"
    }
}

#Create Elastic IP and pass parameter w/ Module
module "eip" {
    source = "../eip"
    instance_id = aws_instance.webServer.id
}

#Create Security Group for EC2 Instance w/ Module
module "sg" {
    source = "../sg"
}

output "Public_IP" {
    value = module.eip.PublicIP
}

output "webServIP" {
  value = aws_instance.webServer.id
}