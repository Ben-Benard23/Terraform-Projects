# locals {
#   instance = var.instance_type[2]
#   ami = ["12345", "67890", "111213"]
#   associate_public_ip_address = false
#   tags = {
#     Name = "Test-server"
#     project = "jjtech-demo"
#   }
# }


# resource "aws_instance" "name" {
#     ami = local.ami[1]
#     instance_type = local.instance
#     associate_public_ip_address = local.associate_public_ip_address
#     tags = local.tags
  
#  }


#  output "public_ip" {
#    value = aws_instance.name.public_ip
#  }





























# locals {
#   az = "us-west-2a"
#   instance_type = "t2.micro"
#   ami= "ami-0735c191cf914754d"
#   tags = {
#     Name = "webserver"
#     project = "Terraform"
#     Env = "prod"
#   }

# }

# resource "aws_instance" "webserver" {
#   ami = local.ami
#   availability_zone = local.az
#   instance_type = local.instance_type

#   tags = local.general_tags

# }
