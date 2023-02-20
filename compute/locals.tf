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
