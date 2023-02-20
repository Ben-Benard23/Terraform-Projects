# locals {
#   general_tags = {
#     Name = "webserver"
#     project = "Terraform"
#     Env = "Dev"
#   }

#   az = "us-west-2a"
#   instance_type = "t2.micro"
# }

# resource "aws_instance" "webserver" {
#   ami = "ami-0735c191cf914754d"
#   availability_zone = local.az
#   instance_type = local.instance_type

#   tags = local.general_tags

# }
