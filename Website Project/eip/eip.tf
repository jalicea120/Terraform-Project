#Variable that will be passed from web.tf
variable "instance_id" {
  type = string
}

#Creation of Elastic IP with the passed parameter from web.tf
resource "aws_eip" "web_ip" {
  instance = var.instance_id
}

#Output of the Elastic IP
output "PublicIP" {
  value = aws_eip.web_ip.public_ip
}
